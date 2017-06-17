compose:
	sudo docker-compose up --build
clean:
	sudo docker-compose down
	sudo docker volume prune -f
