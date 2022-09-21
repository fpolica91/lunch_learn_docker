webserver-replicas:
	@docker service create --name webserver --replicas 3 -p 8080:80 nginx
scale:
	@docker service scale webserver=5
not-active:
	@docker node update --availability drain node1
shutdown:
	@docker service rm webserver