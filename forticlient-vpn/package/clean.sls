# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "forticlient-vpn/map.jinja" import forticlient_vpn with context %}

forticlient-vpn-installer-file-absent:
  file.absent:
    - name: /tmp/{{ forticlient_vpn.pkg.filename }}

forticlient-vpn-removed:
  pkg.removed:
    - pkgs:
      - forticlient
