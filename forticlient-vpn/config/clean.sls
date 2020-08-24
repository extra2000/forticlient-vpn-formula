# -*- coding: utf-8 -*-
# vim: ft=sls

forticlient-vpn-certificate-absent:
  file.absent:
    - name: /srv/{{ pillar['forticlient-vpn']['credential']['certificate'] }}

forticlient-vpn-startvpn-script-absent:
  file.absent:
    - name: /usr/local/bin/start-vpn

forticlient-vpn-answerbot-script-absent:
  file.absent:
    - name: /usr/local/bin/forticlient-vpn-answerbot

forticlient-vpn-systemd-script-absent:
  file.absent:
    - name: /lib/systemd/system/forticlient-vpn.service

systemd-reload:
  cmd.run:
   - name: systemctl daemon-reload
   - onchanges:
     - file: /lib/systemd/system/forticlient-vpn.service
