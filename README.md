# SSR-Client
## Usage
1. config.json
```json
{
    "server": "*",
    "server_ipv6": "::",
    "server_port": *,
    "local_address": "0.0.0.0",
    "local_port": 1080,

    "password": "*",
    "method": "*",
    "protocol": "auth_aes128_md5",
    "protocol_param": "",
    "obfs": "http_simple",
    "obfs_param": "",
    "speed_limit_per_con": 0,
    "speed_limit_per_user": 0,

    "additional_ports" : {}, // only works under multi-user mode
    "additional_ports_only" : false, // only works under multi-user mode
    "timeout": 120,
    "udp_timeout": 60,
    "dns_ipv6": false,
    "connect_verbose_info": 0,
    "redirect": "",
    "fast_open": false
}
```
2. pull image
```shell script
docker pull abadfox/ssr_client:0.1
```
3. start container
```shell script
 docker run -d -v /root/config:/config -p 1080:1080 --name="ssr" ssr:0.1
```