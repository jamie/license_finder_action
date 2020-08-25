FROM ruby:2.7-alpine

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
