samba config:
  file.managed:
    - name: /etc/samba/smb.conf
    - source: salt://samba/config_files/smb.conf
