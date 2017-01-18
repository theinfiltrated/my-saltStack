
base:
  '*-lnx-fs1':
    - samba.install
    - samba.config
    - samba.set-start_folder
    - cron.install
    - rsync.install
    - cronjob.rsync-blank
  '*':
    - vim.install
    - ssh.server
