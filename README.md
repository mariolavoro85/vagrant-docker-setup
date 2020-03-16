# [Vagrant, Terraform and Docker](#vagrant-terraform-and-docker)

  - [Requirements](#requirements)
  - [Usage](#usage)
  - [License](#license)

## [Requirements](#requirements)
- [Git: '>=2.24'](https://git-scm.com/downloads)
- [Terraform: '=0.12.18'](https://www.terraform.io/downloads.html)
- [Virtualbox: '>=6.0'](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant: '>=2.2.6'](https://www.vagrantup.com/downloads.html)
    ```bash
    # Check tools version
    git --version && vagrant -v && VBoxManage -v && terraform-0.12.18 -v
    ```
- [Vagrant box: 'ubuntu-18.04-docker'](https://app.vagrantup.com/mariolavoro85/boxes/ubuntu-18.04-docker)
    ```bash
    # download the box
    vagrant box add mariolavoro85/ubuntu-18.04-docker
    ```

## [Usage](#usage)

```bash
# download from the ufficial repository
git clone https://github.com/mariolavoro85/vagrant-docker-setup.git vdocker

# enter in the new folder
cd vdocker && ls -al

# run vagrant and setup the containers
vagrant up --provision && terraform-0.12.18 apply -auto-approve

# Test the Artifactory container
curl http://192.168.56.102:8281

# Destroy the machine
vagrant destroy -f

```

## [License](#license)

"The MIT License (MIT)

Copyright (c) 2020, mariolavoro85.  All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE."