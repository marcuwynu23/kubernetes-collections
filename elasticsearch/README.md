# Elasticsearch

Elasticsearch is a distributed search and analytics engine for structured and unstructured data.
This setup runs a single-node Elasticsearch instance for local/dev usage.

## How it works

```mermaid
flowchart LR
    Client([Client]) -->|:9200| ES[Elasticsearch]
    ES --> Index[(Index Data)]
```

1. Elasticsearch node starts with configuration from environment variables.
2. HTTP API is exposed on port `9200`.
3. Transport port `9300` is available for node communication use cases.
4. Index data persists via the PersistentVolumeClaim.

## Stack details in this repo

- Image: `docker.elastic.co/elasticsearch/elasticsearch:8.11.0`
- Namespace: `elasticsearch-ns`
- Deployment: `elasticsearch-deployment` (1 replica)
- Service: `elasticsearch-service` (ClusterIP `:9200` REST API, `:9300` transport)
- ConfigMap: `elasticsearch-config`
- Persistent Volume Claim: `elasticsearch-data-storage-claim` (10Gi, mounted at `/usr/share/elasticsearch/data`)

### Compose mapping

| Compose service | Kubernetes resources |
| --- | --- |
| `elasticsearch` (ports `9200`/`9300`, env config, `es_data` volume, `memlock` ulimits, `esnet` network) | `elasticsearch-deployment` + `elasticsearch-service` (`:9200` + `:9300`), env from `elasticsearch-config` |
| `es_data` volume | `elasticsearch-data-storage-claim` PVC |
| `.env` (`ES_NODE_NAME`, `ES_CLUSTER_NAME`, `ES_DISCOVERY_TYPE`, `ES_BOOTSTRAP_MEMORY_LOCK`, `ES_JAVA_OPTS`, `ES_XPACK_SECURITY_ENABLED`) | `elasticsearch-config` — edit before applying |
| `esnet` network | not needed — pods communicate via ClusterIP DNS |

## Kubernetes Resources

### Namespace

```bash
kubectl apply -f namespace.yaml
```

### ConfigMap

```bash
kubectl apply -f configmap.yaml
```

Edit `configmap.yaml` to customize node/cluster names, heap size, or security settings.

### PersistentVolumeClaim

```bash
kubectl apply -f storage-claim.yaml
```

### Deployment

```bash
kubectl apply -f deployment.yaml
```

### Service

```bash
kubectl apply -f service.yaml
```

## How to run

```bash
kubectl apply -f .
```

This will create all required resources:

- Namespace
- ConfigMap
- PersistentVolumeClaim
- Deployment (1 replica)
- Service

## Access

- Port-forward: `kubectl port-forward svc/elasticsearch-service 9200:9200 -n elasticsearch-ns`
- Test endpoint: `curl http://localhost:9200`
- Or expose via Ingress/LoadBalancer for external access

## Notes

- This config is single-node (`discovery.type=single-node`) for local use.
- Tune `ES_JAVA_OPTS` in `configmap.yaml` according to available memory.
- The compose `memlock: -1` ulimits have no direct Pod equivalent here — if `bootstrap.memory_lock=true` fails on your nodes, set it to `"false"` in `configmap.yaml` (or grant `IPC_LOCK` via a custom securityContext).
- No Secret is used — the compose stack sets no credentials (`xpack.security.enabled=false`).
- Run a single replica — clustering is not configured here.
