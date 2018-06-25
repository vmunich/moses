# moses ~ Automated Snapshots for [ArkEcosystem/ark-node](https://github.com/ArkEcosystem/ark-node)

## Installation

```bash
git clone https://github.com/vmunich/moses
cd ~/moses
bash moses.sh config
bash moses.sh install
bash moses.sh start
```


Edit `.moses` or run `bash moses.sh config` with the network specifications:
```
node_dir=/home/ark/ark-node
database_name=ark_mainnet
node_port=4001
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
