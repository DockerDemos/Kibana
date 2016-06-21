Kibana Docker Image
==========================

[Docker](http://docker.io) image for running an [Kibana](https://www.elastic.co/products/kibana) instance.

__Building and Running__

`git clone https://github.com/DockerDemos/Kibana`

`cd Kibana`

`docker build -t kibana .`  \<-- note the period on the end

If you're running Elasticsearch inside another Docker container:

`docker run -p 5601:5601 --link <your_elasticsearch_container>:elastic -d kibana`

Otherwise, if you're running Elasticsearch elsewhere:

`docker run -p 5601:5601 -e KIBANA_CONFIG_ELASTIC_URL=<ELASTICSEARCH_SERVER_URL> -d kibana`

Note that the Elasticsearch instance URL must be in the format "http://ELASTIC.SEARCH.URL:PORT".  HTTP or HTTPS are valid schemes.

Finally, point your browser to the host running Kibana on port 5601, and check out your Kibana instance.

Enjoy!


__Additional Config Variables__

The container will accept the following environmental variables to configure Kibana:

*KIBANA_CONFIG_SERVER_HOST*

* Tells Kibana which interface to listen on
* Defaults to 127.0.0.1

*KIBANA_CONFIG_SERVER_BASEPATH*

* Tells Kibana to use an alternate path for the base URL (useful behind a reverse proxy).
* Defaults to /

*ELASTIC_PORT_9200_TCP_ADDR*

* Created automatically if linked to an ElasticSearch container (as "elastic")
* Tells Kibana to use the linked ElasticSearch container as it's backend
* Conflicts with (and takes presidence over) "KIBANA_CONFIG_ELASTIC_URL".  See below.

*KIBANA_CONFIG_ELASTIC_URL*

* Tells Kibana to use the URL provided as it's ElasticSearch backend
* Conflicts with (and is overridden by) "ELASTIC_PORT_9200_TCP_ADDR".  See above.
* Must be in the format "SCHEME://ELASTIC.SEARCH.URL:PORT".  Scheme may be HTTP or HTTPS.

