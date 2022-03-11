FROM   alpine/git

# Root
USER root
RUN apk update
RUN apk add curl bash wget git

# Gitpod
USER gitpod
RUN curl -L https://raw.githubusercontent.com/koumaza/dot/default/gitpod/gitpod-alpine.sh | bash

# 
USER root
