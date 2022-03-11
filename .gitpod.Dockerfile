FROM   alpine/git

# Root
USER   root
RUN     apk update && \
    add curl bash wget openssl

# Gitpod
USER gitpod
RUN     wget https://raw.githubusercontent.com/koumaza/dot/master/gitpod/gitpod.sh && chmod a+x gitpod.sh \
       && bash ./gitpod-alpine.sh ; rm ./gitpod.sh
