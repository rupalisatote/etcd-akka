# NCF landscape initial setup

## Preparation

This repository contains a set of playbooks required to basic server configuration.

Before you start you need to install  `ansible`. It should be accessible in the repository of your Linux distribution. Unfortunately, there is no possibility to install ansible on Windows, so in that case you need to install virtual machine with Linux.

Binary files are  **not** kept in the repository, so you need to download it separately. You can do this using below scripts, but it is recommended to check the newest versions of below programs:
```sh
$ curl \
  -L 'https://github.com/coreos/etcd/releases/download/v3.2.6/etcd-v3.2.6-linux-amd64.tar.gz' \
  -o 'roles/etcd/files/etcd-v3.2.6-linux-amd64.tar.gz'

$ curl \
  -L 'https://github.com/coreos/flannel/releases/download/v0.8.0/flannel-v0.8.0-linux-amd64.tar.gz' \
  -o 'roles/flannel/files/flannel-v0.8.0-linux-amd64.tar.gz'

$ curl \
  -L 'https://github.com/coreos/fleet/releases/download/v1.0.0/fleet-v1.0.0-linux-amd64.tar.gz' \
  -o 'roles/fleet/files/fleet-v1.0.0-linux-amd64.tar.gz'
```

Binary files for the project `fleet-auto-deploy` are also needed. These are the files created by team member. 

## Launching the ansible
Below is an example how to launch this installation on `dev` environment.

```sh
ansible-playbook-2 -i dev -s site.yml
```
