FROM alpine:3.14

# Update
USER root
RUN apk update

# Switch to gitpod user
USER gitpod

# Give back control
USER root
