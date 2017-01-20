cronie:
  pkg.installed

crontabs:
  pkg.installed

crond: 
  service.running:
    - require:
      - pkg: cronie
