build: 
	@docker build -t haskell-container .

# build a container called haskell_docker
container:
	@docker run -it --name haskell_docker -v $(shell pwd):/home/haskell/project haskell:latest

# starts the haskell_docker repl
repl:
	@docker exec -it haskell_docker ghci

# starts the bash in haskell_docker Debian img
bash:
	@docker exec -it haskell_docker bash

# run the file
run:
	@docker exec -it haskell_docker runhaskell /home/haskell/project/src/$(filter-out $@,$(MAKECMDGOALS)).hs

# run GHCI with the file
compile:
	@docker exec -it haskell_docker ghci /home/haskell/project/src/$(filter-out $@,$(MAKECMDGOALS)).hs

%:
	@: