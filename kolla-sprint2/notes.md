# Sprint 2 koll-ansible Versuch

```sh
sudo apt update
sudo apt install python3-dev libffi-dev gcc libssl-dev
python3 -m venv ./venv

source ./venv/bin/activate

pip install -U pip
pip install 'ansible<2.10'
pip install kolla-ansible

sudo mkdir -p /etc/kolla
sudo chown $jonathan:$jonathan /etc/kolla

# Copy globals.yml and passwords.yml to /etc/kolla
cp -r ./venv/share/kolla-ansible/etc_examples/kolla/* /etc/kolla

# Copy all-in-one and multinode example files
cp ./venv/share/kolla-ansible/ansible/inventory/* .


```

### `multinode` bearbeiten:
```ini
[control]
wally135.cit.tu-berlin.de ansible_python_interpreter=/usr/bin/python3 ansible_become=true ansible_user=jonathan

[network:children]
control
# when you specify group_name:children, it will use contents of group specified.

[compute]
wally141.cit.tu-berlin.de ansible_python_interpreter=/usr/bin/python3 ansible_become=true ansible_user=jonathan

[monitoring]
wally135.cit.tu-berlin.de ansible_python_interpreter=/usr/bin/python3
# This group is for monitoring node.
# Fill it with one of the controllers' IP address or some others.

[storage:children]
compute

[deployment]
wally135.cit.tu-berlin.de ansible_python_interpreter=/usr/bin/python3 ansible_become=true
# use localhost and sudo
```

### Anschließend pingen:
```sh
ansible -i multinode all -m ping
```

### Kolla passwords generieren
```
kolla-genpw
```

### globals.yml kopieren
```
kolla-genpw
```

### Deployment
```
kolla-ansible -i multinode bootstrap-servers
kolla-ansible -i multinode prechecks
kolla-ansible -i multinode deploy
```

Bei `kolla-ansible -i multinode prechecks` tritt bei mir dieses Problem auf:<br>
(Kann durch Änderung am Task umgangen werden)
```
fatal: [wally135.cit.tu-berlin.de]: FAILED! => {"msg": "The conditional check 'inventory_hostname in groups['baremetal']' failed. The error was: error while evaluating conditional (inventory_hostname in groups['baremetal']): 'dict object' has no attribute 'baremetal'\n\nThe error appears to be in '/home/jonathan/code/uni/OurSky/kolla-sprint2/venv/share/kolla-ansible/ansible/roles/prechecks/tasks/service_checks.yml': line 2, column 3, but may\nbe elsewhere in the file depending on the exact syntax problem.\n\nThe offending line appears to be:\n\n---\n- name: Checking Docker version\n  ^ here\n"}
```

Kolla Post-Deploy ausführen (post-deploy funktioniert normal nicht, da der falsche Pfad für post-deploy.yml gesucht wird):
```
ansible-playbook -i ../../../multinode -e @/etc/kolla/globals.yml  -e @/etc/kolla/passwords.yml -e CONFIG_DIR=/etc/kolla  /home/jonathan/code/uni/OurSky/kolla-sprint2/venv/share/kolla-ansible/ansible/post-deploy.yml

. /etc/kolla/admin-openrc.sh 

./venv/share/kolla-ansible/init-runonce 
```



