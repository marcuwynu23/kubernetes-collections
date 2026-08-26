# Kubernetes Application Collections

A curated collection of Kubernetes application manifests and examples for learning, testing, and deployment.

---

## Overview

This repository contains reusable Kubernetes configurations such as:

- Deployments
- Services
- Ingress resources
- Sample applications (e.g., NGINX, Apache HTTPD)

It is designed to help developers and DevOps engineers quickly experiment with and understand Kubernetes workloads.

---

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/marcuwynu23/k8s-collections
   ```

2. Navigate to a specific application folder:

   ```bash
   cd httpd
   ```

3. Apply the manifests:

   ```bash
   kubectl apply -R -f .
   ```

4. Verify resources:

   ```bash
   kubectl get pods,svc
   ```

5. Delete application"

   ```bash
   kubectl delete -R -f .
   ```

---

## Kubernetes Application List

### Web Servers,Load Balancers & Reverse Proxies

- [nginx](./nginx)
- [httpd](./httpd/)
- [haproxy](./haproxy)

### Sample Application

- [vite-app-sample](./vite-app-sample)
- [express-ts-sample](./express-ts-sample)

### Developer Tools and Platforms

- [verdaccio](./verdaccio)

### Database & Database Management

- [supabase](./supabase)
- [dbx](./dbx)
- [documentdb](./documentdb)
- [couchdb](./couchdb)

### Source Code Management

- [gitea](./gitea)

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

### Infrastructure & Security

- [pihole](./pihole)

### Other Services

- [filebrowser](./filebrowser)

---

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

---

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
