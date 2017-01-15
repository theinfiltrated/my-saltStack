samba:
  pkg.installed

smb:
  service.running:
    - require:
      - pkg: samba

nmb:
  service.running:
    - require:
      - pkg: samba
