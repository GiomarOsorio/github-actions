FROM alpine:latest
RUN apk update && apk upgrade && apk add bash curl jq
WORKDIR /opt/clone-repo
COPY . .
ENTRYPOINT ["/bin/bash", "/opt/clone-repo/entrypoint"]
CMD [""]
