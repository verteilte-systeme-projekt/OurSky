# Monitoring

## Recherche
- Was ist der E*K-Stack von Kolla bzw. OpenStack? Habe dazu keine Informationen gefunden

## globals.yml anpassen

```conf
enable_central_logging: "yes"
enable_elasticsearch_curator: "yes" # Retention Policies
```

## Curator
https://www.elastic.co/guide/en/elasticsearch/client/curator/current/actionfile.html

## Elasticsearch
- `/var/lib/docker` braucht viel Platz für Logs

## Kibana
Allows operators to search and visualise logs in a centralised manner.
https://docs.openstack.org/kolla-ansible/4.0.1/kibana-guide.html

- Research

## Prometheus
https://docs.openstack.org/kolla-ansible/latest/reference/logging-and-monitoring/prometheus-guide.html
