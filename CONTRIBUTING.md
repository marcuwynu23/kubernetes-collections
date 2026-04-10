# Contributing Guide

Thank you for your interest in contributing to this repository!
This project aims to provide simple, reusable Kubernetes application examples for learning and experimentation.

---

## Getting Started

1. Fork the repository
2. Clone your fork:

   ```bash
   git clone https://github.com/marcuwynu23/k8s-collections.git
   cd kubernetes-application-collections
   ```

3. Create a new branch:

   ```bash
   git checkout -b feature/my-new-app
   ```

---

## Contribution Types

You can contribute in several ways:

- Add new Kubernetes application examples (e.g., NGINX, HTTPD, Redis)
- Improve existing manifests
- Fix bugs or misconfigurations
- Enhance documentation

---

## Project Structure Guidelines

Each application should have its own folder:

```id="7pz7dt"
app-name/
├── deployment.yaml
├── service.yaml
└── README.md (optional)
```

---

## YAML Best Practices

Please follow these guidelines when submitting Kubernetes manifests:

- Use clear and consistent naming
- Include `labels` for all resources
- Specify `namespace` where applicable
- Keep configurations simple and beginner-friendly
- Avoid unnecessary complexity unless documented

Example:

```yaml id="7l0t0h"
metadata:
  name: my-app
  labels:
    app: my-app
```

---

## Testing Your Changes

Before submitting:

1. Apply your manifests:

   ```bash
   kubectl apply -f .
   ```

2. Verify resources:

   ```bash
   kubectl get pods,svc
   ```

3. (Optional) Clean up:

   ```bash
   kubectl delete -f .
   ```

Ensure everything works as expected.

---

## Submitting Changes

1. Commit your changes:

   ```bash
   git commit -m "Add: new Kubernetes example for <app-name>"
   ```

2. Push to your fork:

   ```bash
   git push origin feature/my-new-app
   ```

3. Open a Pull Request (PR)

---

## Pull Request Guidelines

- Provide a clear description of your changes
- Keep PRs focused and small
- Reference related issues if applicable
- Ensure your YAML is valid and tested

---

## Code of Conduct

By participating, you agree to follow our Code of Conduct.
Please be respectful and constructive in all interactions.

---

## Suggestions

If you're unsure what to contribute:

- Add examples with Ingress
- Add resource limits/requests
- Add readiness/liveness probes
- Provide multi-environment setups

---

Thank you for helping improve this project!
