# -*- coding: utf-8 -*-
# vim: ft=sls

forticlient-vpn-running:
  service.running:
    - name: forticlient-vpn
    - enable: True
