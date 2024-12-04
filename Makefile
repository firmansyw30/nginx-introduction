compose-build:
	docker-compose up --build -d # Build and execute docker compose on background

down:
	docker compose down # Remove the running container

create-self-signed-ssl-certificate:
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt

print-logs:
	tail C:\nginx-1.26.2>logs/access.log # this path is for windows which installed nginx

nginx-reload:
	nginx -s reload

nginx-stop:
	nginx -s stop