## create configmaps

```sh
kubectl create configmap httpd-html --from-file=index.html --dry-run=client -o yaml
```

## References

- Official site: <https://nginx.org>
- Documentation: <https://nginx.org/en/docs/>
- GitHub repo: <https://github.com/nginx/nginx>
- Docker Hub image: <https://hub.docker.com/_/nginx>
- Kubernetes documentation: <https://kubernetes.io/docs/>
