# moses ~ Automated Snapshots for [ArkEcosystem/ark-node](https://github.com/ArkEcosystem/ark-node)

## Installation

```bash
git clone https://github.com/faustbrian/moses
cd ~/moses
bash moses.sh install
bash moses.sh start
```


Edit `.moses` or run `bash moses.sh config` with the network specifications.
```
node_dir=/home/ark/ark-node
database_name=ark_mainnet

# Persona database_name = persona_mainnet
# Kapu database_name = kapu_mainnet
```
Don't forget to open the node's port on your server after installing:

Persona Mainnet: `sudo ufw allow 4102`

## Security

If you discover a security vulnerability within this package, please send an e-mail to Brian Faust at hello@brianfaust.me. All security vulnerabilities will be promptly addressed.

## Credits

- [Brian Faust](https://github.com/faustbrian)
- [All Contributors](../../contributors)

## License

[MIT](LICENSE) © [Brian Faust](https://brianfaust.me)
