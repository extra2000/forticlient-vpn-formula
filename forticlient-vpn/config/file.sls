# -*- coding: utf-8 -*-
# vim: ft=sls

forticlient-vpn-certificate-present:
  file.managed:
    - name: /srv/{{ pillar['forticlient-vpn']['credential']['certificate'] }}
    - source: salt://forticlient-vpn/files/secrets/{{ pillar['forticlient-vpn']['credential']['certificate'] }}
    - mode: 400
    - force: true

forticlient-vpn-startvpn-script-present:
  file.managed:
    - name: /usr/local/bin/start-vpn
    - source: salt://forticlient-vpn/files/scripts/start-vpn.sh.jinja
    - template: jinja
    - mode: 755
    - force: true

forticlient-vpn-answerbot-script-present:
  file.managed:
    - name: /usr/local/bin/forticlient-vpn-answerbot
    - source: salt://forticlient-vpn/files/scripts/forticlient-vpn-answerbot.sh.jinja
    - template: jinja
    - mode: 755
    - force: true

forticlient-vpn-systemd-script-present:
  file.managed:
    - name: /lib/systemd/system/forticlient-vpn.service
    - source: salt://forticlient-vpn/files/scripts/forticlient-vpn.service.jinja
    - template: jinja
    - force: true

systemd-reload:
  cmd.run:
   - name: systemctl daemon-reload
   - onchanges:
     - file: /lib/systemd/system/forticlient-vpn.service
