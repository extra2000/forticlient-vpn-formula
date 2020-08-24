# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "forticlient-vpn/map.jinja" import forticlient_vpn with context %}

forticlient-vpn-package-prerequisites:
  pkg.installed:
    - pkgs:
      - expect

forticlient-vpn-installer-file:
  file.managed:
    - name: /tmp/{{ forticlient_vpn.pkg.filename }}
    - source: https://filestore.fortinet.com/forticlient/downloads/{{ forticlient_vpn.pkg.filename }}
    - skip_verify: true
    - force: true
    - retry:
      - until: True
      - attempts: 5
      - interval: 10

forticlient-vpn-installed:
  pkg.installed:
    - sources:
      - forticlient: /tmp/{{ forticlient_vpn.pkg.filename }}
    - retry:
      - until: True
      - attempts: 5
      - interval: 10
    - require:
      - file: forticlient-vpn-installer-file
