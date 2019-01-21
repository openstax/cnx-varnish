# CNX Varnish Container

This provides a Docker Container for CNX's Varnish Cache server. It can be configured using environment variables

## Usage

Example:
```sh
docker run openstax/cnx-varnish:latest
```

### Environment Variables

   |  Environment Variable   |  Description             |
   | ----------------------- |:------------------------:|
   | VARNISH_WEBVIEW_HOST | host webview is served on (i.e. where nginx is running)
   | VARNISH_WEBVIEW_PORT | port number webview is served on
   | VARNISH_ARCHIVE_HOST | host were archive is served
   | VARNISH_ARCHIVE_PORT | port archive is served on
   | VARNISH_PUBLISHING_HOST | host were publishing is served
   | VARNISH_PUBLISHING_PORT | port publishing is served on
   | VARNISH_PRESS_HOST | host were press is served
   | VARNISH_PRESS_PORT | port press is served on
   | VARNISH_ARCLISHING_DOMAIN | domain where the archive, publishing and press servers map to
   | VARNISH_FRONTEND_DOMAIN | domain where the webview ui can be seen
   | VARNISH_ALLOWED_PURGE_SUBNET | network subnet for which purge requests can be made

## Copyright

This software is subject to the provisions of the GNU Affero General Public License Version 3.0 (AGPL). See license.txt for details. Copyright (c) 2018 Rice University
