FROM alpine:3.7

LABEL maintainer "Adrian Riobo Lorenzo <adrian.riobo.lorenzo@gmail.com>"

#Set CET timezone
RUN apk add tzdata \
    && cp /usr/share/zoneinfo/Europe/Brussels /etc/localtime \
    && echo "Europe/Brussels" >  /etc/timezone \
    && apk del tzdata


