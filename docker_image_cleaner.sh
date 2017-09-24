docker images -f "dangling=true" -q | xargs docker rmi
