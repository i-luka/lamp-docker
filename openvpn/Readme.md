### Чтобы openVpn заработал нужно сделать следующие настройки
Оригинальная инструкция: [оригинал](https://hub.docker.com/r/kylemanna/openvpn/)
```shell
docker run -v  C:\project\docker-nginx\openvpn\config:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://php.site
docker run -v  C:\project\docker-nginx\openvpn\config:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
docker run -v  C:\project\docker-nginx\openvpn\config:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full elar-iluka nopass
docker run -v  C:\project\docker-nginx\openvpn\config:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient elar-iluka > elar-iluka.ovpn
```

#### Дополнительно 
нужно конвертнуть полученый elar-iluka.ovpn из UTF-16 в UTF-8 (с помощью Notepad++ например)

#### тоже самое но через make

1. make ovpn_genconfig

2. make ovpn_initpki

3. make build-client-full

4. make ovpn_getclient

В файлике elar-iluka.ovpn в корне будет настройки профиля для использования в vpn клиенте.

