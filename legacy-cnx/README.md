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
   | VARNISH_LEGACY_HOST | host where a zope client(s) is served on
   | VARNISH_FRONTEND_LEGACY_DOMAIN | domain where the webview ui can be seen
   | VARNISH_ALLOWED_PURGE_SUBNET | network subnet for which purge requests can be made

## Copyright

This software is subject to the provisions of the GNU Affero General Public License Version 3.0 (AGPL). See license.txt for details. Copyright (c) 2018 Rice University
