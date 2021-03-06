#!/usr/bin/env bash

# ---------------------------------------------------------------------------
# This file is part of moses.
#
# (c) Brian Faust <hello@brianfaust.me>
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
# ---------------------------------------------------------------------------

moses_dump()
{
    # make sure postgres is running
    info "Stopping PostgreSQL"
    process_postgres=$(pgrep -a postgres | awk '{print $1}')

    if [ -z "$process_postgres" ]; then
        sudo service postgresql start
    fi

    # go into the snapshot dir
    cd $snapshot_dir

    # create a new snapshot
    info "Taking snapshot"
    pg_dump -Fc $database_name > latest

    # move old snapshot
    info "Archiving older current snapshot"
    current_file=current # $(ls -t | head -n1)
    current_date=$(stat -c %Y $current_file)
    mv $current_file $current_date

    # move new snapshot
    info "Updating current snapshot"
    mv latest $current_file
    
    # write the height of the last snapshot on index.html
    curl -s http://127.0.0.1:+$node_port/api/blocks/getHeight > index.html

    # delete all but the 10 recent snapshots
    info "Deleting $snapshot_amount oldest snapshots"
    ls -t -I "*.html"| tail -n +$snapshot_amount | xargs rm --

    # check if we send the snapshot to a remote location
    if [[ $snapshot_remote = true ]]; then
        rsync --checksum --no-whole-file -v -e "ssh -p ${snapshot_remote_port} -i ${snapshot_remote_identity_file}" current "${snapshot_remote_user}@${snapshot_remote_host}:${snapshot_remote_directory}"
    fi
    
    success "Finished"
}
