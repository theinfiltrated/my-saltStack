
base:
  '*-lnx-fs*':
    - samba.install
    - samba.config
  '*':
    - vim.install
    - ssh.server
