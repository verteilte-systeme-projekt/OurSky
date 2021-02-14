# OurSky

![Ansible Yaml Lint](https://github.com/verteilte-systeme-projekt/OurSky/workflows/Ansible%20Yaml%20Lint/badge.svg?branch=master)

## Nodes

| Host                        | Funktion | Notizen           | Probleme                              |
|-----------------------------|----------|-------------------|---------------------------------------|
| `wally135.cit.tu-berlin.de` | CONTROL  |                   | OK |
| `wally139.cit.tu-berlin.de` | MONITORING |                 |                                       |
| `wally141.cit.tu-berlin.de` | COMPUTE1 |                   | OK                                    |
| `wally142.cit.tu-berlin.de` | COMPUTE2 |                   | OK                                    |


1. Aufsetzung von OpenStack mit Hilfe von kolla-ansible.<br>
  - Installiere Python.<br>
  - Installiere lokal venv (oder anderes dergleichen).<br>
  - In einem Virtual Environment lokal ansible und kolla-ansible installieren:<br>
    - Führen Sie das Ansible-Playbook mit dem Befehl aus:<br>
      ansible-playbook -i vyos.example.net, -u ansible -k -e ansible_network_os=vyos.vyos.vyos pb_pre_bootstrap.yaml ??? Wie Skript ausführen ???<br>
     - Kolla Skript?<br>
  - Teste die Verbindung mit "ansible webservers -m ping".<br>
2. OpenStack mit Monitoring ausstatten.<br>
  - Prometheus<br>
    Skript ausführen:
    ???
  - Grafana<br>
    Skript ausführen:
    ???
