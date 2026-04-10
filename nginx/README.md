## create configmaps

```sh
kubectl create configmap httpd-html --from-file=index.html --dry-run=client -o yaml
```
