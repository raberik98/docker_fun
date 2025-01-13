# docker_fun

docker run --name postgres-container \
  -e POSTGRES_DB=people \
  -e POSTGRES_USER=admin \
  -e POSTGRES_PASSWORD=password \
  -p 5432:5432 \
  -v ~/Documents/pg_data:/var/lib/postgresql/data \
  -d postgres

kubectl exec -it <py-backand-pod-name> -- sh
psql -h postgres-svc -U admin -d people