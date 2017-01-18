set rsync folder:
  file.recurse:
    - name: /cronjob_script
    - source: salt://cronjob_script

bash /cronjob_script/rsync-blank.sh:
  cron.present:
   - user: root
   - name: 'bash /cronjob_script/rsync-blank.sh'
   - minute: '0'
   - hour: '0'
   - daymonth: '*'
   - month: '*'
   - dayweek: '*'
