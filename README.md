# OurSky

![Ansible Yaml Lint](https://github.com/verteilte-systeme-projekt/OurSky/workflows/Ansible%20Yaml%20Lint/badge.svg?branch=master)

## Nodes

| Host                        | Funktion | Notizen           | Probleme                              |
|-----------------------------|----------|-------------------|---------------------------------------|
| `wally135.cit.tu-berlin.de` | CONTROL  |                   | OK |
| `wally139.cit.tu-berlin.de` | MONITORING |                 |                                       |
| `wally141.cit.tu-berlin.de` | COMPUTE1 |                   | OK                                    |
| `wally142.cit.tu-berlin.de` | COMPUTE2 |                   | OK                                    |


1. Aufsetzung von OpenStack mit Hilfe von kolla-ansible.
  - Installiere Python.
  - Installiere lokal venv (oder anderes dergleichen).
  - In einem Virtual Environment lokal ansible und kolla-ansible installieren:
    - Führen Sie das Ansible-Playbook mit dem Befehl aus:
      ansible-playbook -i vyos.example.net, -u ansible -k -e ansible_network_os=vyos.vyos.vyos pb_pre_bootstrap.yaml ??? Wie Skript ausführen ???
     - Kolla Skript?
  - Teste die Verbindung mit "ansible webservers -m ping".
2. OpenStack mit Monitoring ausstatten.
  - Prometheus
  - Grafana
