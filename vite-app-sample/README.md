# vite-app-sample

A sample Vite application demonstrating modern front-end development with Kubernetes.

## How it works

```mermaid
flowchart LR
    User([User]) -->|:80| ViteApp[Vite.js App]
    ViteApp --> Data[(no persistent storage)]
```

1. The deployment starts a Vite.js frontend application.
2. Serves the web application via HTTP.
3. No persistent storage - stateless container.

## Stack details in this repo

- Image: `ghcr.io/marcuwynu23/vite-app-sample:latest`
- Namespace: `k8s-collections`
- Deployment: `vite-app-sample-deployment` (1 replica)
- Service: `vite-app-sample-service` (NodePort)
- Port: `80` (HTTP) and `30080` (NodePort)
- No Persistent Volume Claim (stateless application)

## Kubernetes Resources

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

This will create the required resources:

- Deployment (1 replica)
- Service (NodePort)

## Access

- NodePort: `http://<node-ip>:30080` (default)
- Port-forward: `kubectl port-forward svc/vite-app-sample-service 8080:80 -n k8s-collections`
- Access via: `http://localhost:8080`

## Notes

- Stateless application - no data persistence.
- Designed for development and testing purposes.
- Update the image tag to deploy newer versions.
- Scale the deployment with `kubectl scale deployment vite-app-sample-deployment --replicas=N -n k8s-collections`