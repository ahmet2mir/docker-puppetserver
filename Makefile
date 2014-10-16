all: build
build:
	docker build -t ahmet2mir/puppetserver .
run:
	docker run -d -t -p 8140:8140 -h puppetserver.vm.local --name puppetserver ahmet2mir/puppetserver
clean:
	docker rm -f puppetserver
ssh:
	docker-enter puppetserver
logs:
	docker logs -f puppetserver
