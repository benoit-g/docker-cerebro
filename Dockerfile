FROM        alpine:latest
RUN         apk --no-cache --update upgrade && \
            apk --no-cache add openjdk8-jre wget bash && \
            wget https://github.com/lmenezes/cerebro/releases/download/v0.7.1/cerebro-0.7.1.zip && \
            unzip cerebro-0.7.1.zip && \
            rm cerebro-0.7.1.zip

WORKDIR     /cerebro-0.7.1

EXPOSE      9000

ENTRYPOINT ["bin/cerebro"]
