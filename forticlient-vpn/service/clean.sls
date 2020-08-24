# -*- coding: utf-8 -*-
# vim: ft=sls

forticlient-vpn-dead:
  service.dead:
    - name: forticlient-vpn
    - enable: false
