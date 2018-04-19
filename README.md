Cerebro
------------

cerebro is an open source(MIT License) elasticsearch web admin tool built using Scala, Play Framework, AngularJS and Bootstrap.

### Requirements

Docker Engine running.

### Installation
- Download latest docker image:
```
docker pull benoit/cerebro
```

- Start container:
```
docker run --detach \
  --name=cerebro \
  --restart=always \
  --publish=9000:9000 \
  benoit/cerebro
```
- Access on http://localhost:9000

### Configuration

#### HTTP server address and port
You can run cerebro listening on a different port(defaults to 9000) by adding parameters on the command line:

```
docker run --detach \
  --name=cerebro \
  --restart=always \
  --publish=1234:1234 \
  benoit/cerebro \
  -Dhttp.port=1234
```

#### Other settings

Other settings are exposed through the **conf/application.conf** file found on the application directory.

It is also possible to use an alternate configuration file defined on a different location:

```
docker run --detach \
  --name=cerebro \
  --restart=always \
  --publish=9000:9000 \
  --volume=path/to/config:/conf/application.conf
  benoit/cerebro
```
