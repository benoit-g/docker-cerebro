FROM        alpine:latest

ENV         VERSION 0.7.3

RUN         apk --no-cache --update upgrade && \
            apk --no-cache add openjdk8-jre wget bash && \
            wget https://github.com/lmenezes/cerebro/releases/download/v${VERSION}/cerebro-${VERSION}.zip && \
            unzip cerebro-${VERSION}.zip && \
            rm cerebro-${VERSION}.zip

WORKDIR     /cerebro-${VERSION}

EXPOSE      9000

ENTRYPOINT ["bin/cerebro"]
