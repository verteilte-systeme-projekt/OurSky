# OurSky - Die einfache OpenStack-Lösung

![Ansible Yaml Lint](https://github.com/verteilte-systeme-projekt/OurSky/workflows/Ansible%20Yaml%20Lint/badge.svg?branch=master)

Willkommen bei OurSky! Unser Ziel ist es, das Deployment und Monitoring von OpenStack so einfach wie möglich zu gestalten. Folgende Ziele haben wir uns gesetzt:

- **Automatisches Deployment.** Nie wieder endlose Fehlersuche!
- **Reproduzierbarkeit.** Unsere Konfiguration ist mit bestem Wissen und Gewissen getestet.
- **Monitoring.** Wir nehmen den Admin an die Hand und setzen vollautomatisches Monitoring um.
- **Benachrichtigungen und Alarme.** Wenn mal etwas im Betrieb schiefgeht und nicht automatisch korrigiert werden konnte, soll das so schnell wie möglich einem Menschen mitgeteilt werden, der sich dann dem Problem widmen kann, anstatt den ganzen Tag auf Diagramme zu schauen

Legen Sie gleich los! [Auf zur Installation](wiki/Installation)!

## Installation

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
