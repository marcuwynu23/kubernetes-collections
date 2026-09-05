<div align="center">

 <img src="./banner.svg" alt="Kubernetes Collections" style="width: 100%; max-width: 1200px;" />

<a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License: MIT"></a>
<img src="https://img.shields.io/badge/stacks-kubernetes-informational" alt="Kubernetes Stacks">
<img src="https://img.shields.io/badge/runtime-Kubernetes-0db7ed" alt="Runtime: Kubernetes">

  <p><strong> A curated collection of Kubernetes application manifests and examples for learning, testing, and deployment.</strong></p>
</div>

## Overview

This repository is a practical collection of Kubernetes manifests for common infrastructure and developer tooling. Each folder contains reusable configuration you can apply quickly and customize for your environment.

## What You Will Find

- Pre-configured Kubernetes manifests for common services and tooling
- Deployment, Service, ConfigMap, and PVC examples
- Stack examples with persistent storage and environment variables
- Configurations that are easy to adapt for learning and testing
- Namespace isolation for each application

## Available Stacks

### Web Servers, Load Balancers & Reverse Proxies

- [nginx](./nginx)
- [httpd](./httpd/)
- [haproxy](./haproxy)

### Sample Application

- [vite-app-sample](./vite-app-sample)
- [express-ts-sample](./express-ts-sample)

### Developer Tools and Platforms

- [verdaccio](./verdaccio)
- [backstage](./backstage)

### Database & Database Management

- [adminer](./adminer)
- [supabase](./supabase)
- [dbx](./dbx)
- [documentdb](./documentdb)
- [couchdb](./couchdb)

### Source Code Management

- [gitea](./gitea)
- [bitbucket](./bitbucket)
- [gitlab](./gitlab)

### Secrets Management

- [vault](./vault)

### Package Repository

- [devpi](./devpi)

### Visual Management

- [draw.io](./draw.io)

### Code Management

- [code-server](./code-server)

### AI Orchestration Tools

- [n8n](./n8n)

### Message Brokers & Queuing

- [rabbitmq](./rabbitmq)
- [automq](./automq)

### Alerts & Notifications

- [apprise](./apprise)

### Infrastructure & Security

- [pihole](./pihole)
- [keycloak](./keycloak)
- [nessus](./nessus)
- [splunk](./splunk/)

### DevOps

- [fluent-bit](./fluent-bit)

### Other Services

- [filebrowser](./filebrowser)

## Quick Start

1. Clone the repository:

   ```bash
   git clone https://github.com/marcuwynu23/k8s-collections
   ```

2. Navigate to a specific application folder:

   ```bash
   cd code-server
   ```

3. Apply the manifests:

   ```bash
   kubectl apply -f .
   ```

4. Verify resources:

   ```bash
   kubectl get pods,svc -n code-server-ns
   ```

5. Delete application:

   ```bash
   kubectl delete -f .
   ```

## Podman Support

Most stacks can also run with Podman:

```bash
# Apply manifests with Podman
kubectl apply -f .
```

Note: Some configurations may require additional Podman-Kubernetes setup.

## Contributing

Contributions are welcome! To get started:

1. Fork the repository
2. Create a new branch
3. Add or improve Kubernetes manifests
4. Submit a pull request

Please ensure:

- YAML files are valid and well-formatted
- Resources are properly labeled
- Examples are simple and reproducible

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
