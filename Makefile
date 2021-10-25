.PHONY: list
list:
	@echo ""
	@echo "Commands:"
	@echo ""
	@echo "  install : composer install"
	@echo "  dump : composer dump"
	@echo "  up : run dev environment"
	@echo "  down : stop dev environment"
	@echo "  restart : restart dev environment"
	@echo ""

install:
	@echo "Install all requirement..."
	docker-compose exec lumen composer install

dump:
	@echo "Install all requirement..."
	docker-compose exec lumen composer dump

up:
	@echo "Start development server..."
	docker-compose up -d

down:
	@echo "Stop development server..."
	docker-compose down

restart:
	@echo "RestartStart development server..."
	docker-compose restart