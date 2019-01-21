# CNX Varnish Container

This provides a Docker Containers for CNX's Varnish Cache servers. It can be configured using environment variables.

This projects contains multiple containers. See sub-readme files in directories of this project for details.

## Usage

Example:
```sh
docker run openstax/cnx-varnish:latest
```

## Build & Release

```sh
cd cnx
docker build -t openstax/cnx-varnish:latest .
docker push openstax/cnx-varnish:latest
cd ..
cd legacy-cnx
docker build -t openstax/legacy-cnx-varnish:latest .
docker push openstax/legacy-cnx-varnish:latest
```

## Copyright

This software is subject to the provisions of the GNU Affero General Public License Version 3.0 (AGPL). See license.txt for details. Copyright (c) 2018 Rice University
