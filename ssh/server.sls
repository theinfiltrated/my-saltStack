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

copy ssh directory with the keys:
  file.recurse:
    - user: root
    - group: root
    - dir_mode: 644
    - name:  /root/.ssh
    - source: salt://ssh/ssh_folder

#ssh_auth.present:
    #- user: root
    #- source: salt://ssh/authorized_keys
    #- config: '%h/.ssh/authorized_keys'
#/root/.ssh/authorized_keys:
  #file.managed:
    #- user: root
    #- group: root
    #- mode: 644
    #- source: salt://ssh/authorized_keys
    #- require:
      #- pkg: openssh-server
