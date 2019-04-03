DASHDOARD_VERSION=v1.10.1
HEAPSTER_VERSION=v1.5.4
GRAFANA_VERSION=v5.0.4
INFLUXDB_VERSION=v1.5.2
username=registry.cn-hangzhou.aliyuncs.com/google_containers
images=(
        kubernetes-dashboard-amd64:${DASHDOARD_VERSION}
        heapster-grafana-amd64:${GRAFANA_VERSION}
        heapster-amd64:${HEAPSTER_VERSION}
        heapster-influxdb-amd64:${INFLUXDB_VERSION}
        )
for image in ${images[@]}
do
docker pull ${username}/${image}
docker tag ${username}/${image} k8s.gcr.io/${image}
docker rmi ${username}/${image}
done
