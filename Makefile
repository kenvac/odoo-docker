###############################################################################
# Docker Commands
###############################################################################
compose_cmd        := DOCKER_BUILDKIT=1 docker compose
odoo_container	   := odoo16

# Build install modules and start odoo services
run:
	$(compose_cmd) build --parallel
	odooparams="-u base" $(compose_cmd) up

# Start odoo services
start:
	odooparams="" $(compose_cmd) up

# Stop odoo services
stop:
	odooparams="" $(compose_cmd) stop

# Restart odoo services
restart:
	odooparams="" $(compose_cmd) restart

# See odoo docker logs
logs:
	docker logs -f ${odoo_container}

# Purge all docker data
deleteall:
	docker system prune -a
	docker image prune
	docker volume prune
