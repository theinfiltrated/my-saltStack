
base:
  '*-lnx-fs1':
    - samba.install
    - samba.config
    - samba.set-start_folder
  '*':
    - vim.install
    - ssh.server
