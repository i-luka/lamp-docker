build:
	docker-compose -f docker-compose.yml -f gw.yml -f mysql.yml -f openVPN.yml build
up:
	docker-compose -f docker-compose.yml -f gw.yml -f mysql.yml -f openVPN.yml up

ovpn_genconfig:
	docker run -v  C:\project\docker-nginx\openvpn\config:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://php.site
ovpn_initpki:
	docker run -v  C:\project\docker-nginx\openvpn\config:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
build-client-full:
	docker run -v  C:\project\docker-nginx\openvpn\config:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full elar-iluka nopass
ovpn_getclient:
	docker run -v  C:\project\docker-nginx\openvpn\config:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient elar-iluka > elar-iluka.ovpn
