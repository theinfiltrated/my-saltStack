set share folder in the server:
  file.recurse:
    - name: /data_default
    - source: salt://samba/start_folder
    - user: nobody
    - group: nobody
    - dir_mode: 0777

