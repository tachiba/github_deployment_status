FROM alpine

RUN apk update
RUN apk add --no-cache ca-certificates curl jq

COPY bin bin
RUN chmod +x bin/create_deployment.sh
RUN chmod +x bin/create_deployment_status.sh
RUN chmod +x bin/fetch_deployment.sh

ENTRYPOINT ["/bin/sh"]
