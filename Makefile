IMAGE_NAME="phlak/youtube-dl"
IMAGE_TAG="$$(grep 'ARG YTDL_VERSION' Dockerfile | awk -F = '{print $$2}')"

build:
	@docker build --force-rm --pull --tag $(IMAGE_NAME):$(IMAGE_TAG) .

purge:
	@docker image rm --force $(IMAGE_NAME):$(IMAGE_TAG)
