FROM debian:9.5-slim

RUN apt update
RUN apt -yq install rsync openssh-client


# Label
LABEL "com.github.actions.name"="rsync deploy .distignore filter"
LABEL "com.github.actions.description"="Deploy to a remote server using rsync over ssh, excluding files and folders listed in a .distignore"
LABEL "com.github.actions.color"="green"
LABEL "com.github.actions.icon"="truck"

LABEL "repository"="https://github.com/dkjensen/rsync-deploy-distignore"
LABEL "homepage"="https://github.com/dkjensen/rsync-deploy-distignore"
LABEL "maintainer"="David Jensen <david@dkjensen.com>"


ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]