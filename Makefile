# ---------------------------
# Configuration
# ---------------------------

IMAGE_NAME = boovan
CONTAINER_NAME = boovan
CADDYFILE = Caddyfile

# ---------------------------
# Build Hugo site
# ---------------------------

hugo:
	docker run --rm -v $(PWD):/src hugomods/hugo:0.141.0 --minify

# ---------------------------
# Build Docker image
# ---------------------------

docker-build: hugo
	docker build -t $(IMAGE_NAME) .

# ---------------------------
# Stop existing container
# ---------------------------

stop:
	- docker rm -f $(CONTAINER_NAME)

# ---------------------------
# Run container
# ---------------------------

run:
	docker run -d --name $(CONTAINER_NAME) \
		-p 28080:80 \
		-v $(PWD)/$(CADDYFILE):/etc/caddy/Caddyfile \
		$(IMAGE_NAME)

# ---------------------------
# Clean + Rebuild + Launch
# ---------------------------

deploy: docker-build stop run
	@echo "🚀 Deployment complete! Hugo site updated and container restarted."

# ---------------------------
# Convenience target
# ---------------------------

update: deploy

