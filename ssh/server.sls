openssh-server:
  pkg.installed

sshd:
  service.running:
    - require:
      - pkg: openssh-server
      - file: /etc/ssh/sshd_config

/etc/ssh/sshd_config:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://ssh/sshd_config
    - require:
      - pkg: openssh-server

/root/.ssh/authorized_keys:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://ssh/authorized_keys
    - require:
      - pkg: openssh-server
