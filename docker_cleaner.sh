#docker images -f "dangling=true" -q | xargs docker rmi
docker image prune -f
docker volume prune -f
