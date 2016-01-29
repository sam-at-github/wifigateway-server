Overview
========
Provides a simple daemon that controls Internet access for peers connecting to an access point or LAN. Peers connecting to the access point are redirected to a web page where they sign on and are given access to the Internet. Intended to work with hostapd, and dnsmasq. Does not configure those softwares for you but provides default configurations in docs.

Note this kind of a toy app that I wrote before I really investigated what RADIUS is. It was a good learning experience. Integrating with RADIUS or similar AAA service is the way to go.

The setup consists of two components:

 * The backend that manages client sessions. This repository is the backend.
 * The frontend which the client uses to request access, and monitor their session. See [wifigateway-web](https://github.com/sam-at-github/wifigateway-web) for a simple frontend.

Basically this system does not care how a client gets an IP address or authenticates, but there needs to be a DHCP server and AP server on the same host. Test with `dnsmasq` and `hostapd`. See http://www.thekelleys.org.uk/dnsmasq/doc.html, http://wireless.kernel.org/en/users/Documentation/hostapd.

Installation
============

    git clone https://github.com/sam-at-github/wifigateway-server
    cd wifigateway-server && dpkg-buildbackage -b && cd -
    sudo gdebi wifigateway-server*.deb --option=APT::Install-Recommends=true
    # Now configure wifgateway interfaces, hostapd, and dnsmasq. See sample configs.

Config
======
See [server.ini](conf/server.ini) which is installed to `/etc/wifigateway/server.ini`. Also see [sample configs for hostapd and dnsmasq](conf/).
