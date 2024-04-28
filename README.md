# games_servers
# This repository contains docker-compose files for setting up game servers on a linux host or windows host using docker.

# pterodactyl panel installation
# you need to use the right .env file for the right OS
--env-file linux.env
--env-file windows.env

docker compose --env-file windows.env -f pterodactyl-base-docker-compose.yml -p pterodactyl up -d ; docker compose --env-file windows.env -f pterodactyl-wings-docker-compose.yml -p pterodactyl up -d

# after running the above command, you will need to create a user to access the panel, you can create a user by running the following command
docker exec -it pterodactyl-panel-1 php artisan p:user:make

# after running the above command, you can access the panel and create a node, then you will need to create a config file for the node and place this file in the node config folder (wings_etc) and restart the wings container

