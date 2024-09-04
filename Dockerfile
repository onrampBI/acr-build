FROM mcr.microsoft.com/azure-cli:2.63.0 as runtime
LABEL "repository"="https://github.com/Azure/acr-build"
LABEL "maintainer"="Alessandro Vozza"
LABEL "forked"="edwin"

ADD entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]

FROM runtime
