IMAGE_NAME := oiler-docs
CONTAINER_NAME := oiler-docs-container
DOCKERFILE := Dockerfile
SOURCE_PORT := 80

all: build run

build:
	@echo "Building Docker image..."
	docker build -t $(IMAGE_NAME) -f $(DOCKERFILE) .

run:
	@echo "Running container..."
	docker run --name $(CONTAINER_NAME) -p $(SOURCE_PORT):80 -d $(IMAGE_NAME)

stop-remove-container:
	@echo "Stopping and removing container..."
	-docker stop $(CONTAINER_NAME)
	-docker rm $(CONTAINER_NAME)

remove-image:
	@echo "Removing Docker image..."
	-docker rmi $(IMAGE_NAME)

clean: stop-remove-container remove-image

help:
	@echo "Available targets:"
	@echo "  all               - Build the Docker image and run the container (default)"
	@echo "  build             - Build the Docker image"
	@echo "  run               - Run the container"
	@echo "  stop-remove-container - Stop and remove the running container"
	@echo "  remove-image      - Remove the Docker image"
	@echo "  clean             - Stop the container, remove the container, and remove the image"
	@echo "  help              - Show this help message"

.PHONY: all build run stop-remove-container remove-image clean help