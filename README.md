# moses ~ Automated Snapshots for Ark Forks

## Installation

```bash
git clone https://github.com/vmunich/moses
cd ~/moses
bash moses.sh config
bash moses.sh install
bash moses.sh start
```


| Setting | Network | Value
| --- | --- | --- |
| `node_dir` | Persona | /home/$USER/persona-mainnet
| `database_name` | Persona | persona_mainnet
| `node_port` | Persona | 4102
| `node_dir` | Kapu | /home/$USER/kapu-node
| `database_name` | Kapu | kapu_mainnet
| `node_port` | Kapu | 9700

Replace `$USER` with your server's username.

## Security

If you discover a security vulnerability within this package, please send an e-mail to Brian Faust at hello@brianfaust.me. All security vulnerabilities will be promptly addressed.

## Credits

- [Brian Faust](https://github.com/faustbrian)
- [All Contributors](../../contributors)

## License

[MIT](LICENSE) © [Brian Faust](https://brianfaust.me)
