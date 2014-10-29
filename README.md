Kibana Docker Image
==========================

[Docker](http://docker.io) image for running an [Kibana](http://www.elasticsearch.org/overview/kibana/) instance.

__Building and Running__

1. `git clone https://github.com/DockerDemos/Kibana`
2. `cd Kibana`
3. `docker build -t kibana .  \<-- note the period on the end`
4. `docker run -p 80:80 --link elegant_brown:es -d kibana <hostname>`

Replacing \<hostname\> with the fully qualified domain name of your Elasticsearch instance.  Note that port 9200 on the Elasticsearch instance must be accessable by the host running this Kibana instance.

Finally, point your browser to what you used for \<hostname\>, and check out your Kibana instance.

Enjoy!

##Copyright Information##

Kibana is Copyright 2012-2014 Elasticsearch BV

The DockerDemos/ElasticSearch code here is:
 
Copyright (C) 2014 Chris Collins

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.






