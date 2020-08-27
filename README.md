# forticlient-vpn-formula

**DEPRECATED!** Please use https://github.com/extra2000/openfortivpn-formula because OpenFortiVPN is open source and support ARM.

SaltStack Formula for FortiClient VPN client


## Available states

| States | Descriptions |
| ------ | ------------ |
| `forticlient-vpn` | Executes `./init.sls` which will install and deploy FortiClient VPN client. |
| `forticlient-vpn.clean` | Executes `./clean.sls` which will stop FortiCLient VPN client and uninstall. |
| `forticlient-vpn.package` | Install FortiClient VPN client. |
| `forticlient-vpn.package.clean` | Uninstall FortiClient VPN client. |
| `forticlient-vpn.config` | Generate configs and startup scripts for FortiClient VPN client. |
| `forticlient-vpn.config.clean` | Remove configs and startup scripts for FortiClient VPN client. |
| `forticlient-vpn.service` | Start and enable FortiClient VPN client service. |
| `forticlient-vpn.service.clean` | Stop and disable FortiClient VPN client service. |
