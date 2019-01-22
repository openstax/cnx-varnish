FROM openstax/varnish:1.1.0 as target

COPY etc/confd /etc/confd

EXPOSE 80

ENV VARNISH_WEBVIEW_HOST \
    VARNISH_WEBVIEW_PORT \
    VARNISH_ARCHIVE_HOST \
    VARNISH_ARCHIVE_PORT \
    VARNISH_PUBLISHING_HOST \
    VARNISH_PUBLISHING_PORT \
    VARNISH_PRESS_HOST \
    VARNISH_PRESS_PORT \
    VARNISH_ARCLISHING_DOMAIN \
    VARNISH_FRONTEND_DOMAIN
