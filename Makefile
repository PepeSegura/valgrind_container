IMG=psegura42/valgrind
NAME=valgrind
WORKDIR=/home

run:
	docker run -d -it -v $(HOME):$(WORKDIR)/ --name $(NAME) $(IMG)

stop:
	docker rm -f $(NAME)

re: stop run
	@true

enter:
	docker exec -it $(NAME) zsh

build:
	docker build -t $(IMG) .

rm:
	docker image rm -f $(IMG)

push:
	docker push $(IMG)
