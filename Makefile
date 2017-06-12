all:
	sudo docker-compose up

clean:
	sudo docker-compose rm -f
	sudo docker ps -a -q | xargs sudo docker stop
	sudo docker volume prune
