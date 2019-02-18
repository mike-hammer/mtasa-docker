build:
	docker build --force-rm -t mlavrik/mtasa:latest .

run:
	docker run --rm -it mlavrik/mtasa
