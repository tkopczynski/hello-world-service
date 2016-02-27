FROM scratch

COPY hello-world-service /app/

ENTRYPOINT ["/app/hello-world-service"]