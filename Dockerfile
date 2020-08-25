FROM ruby:2.7-alpine

# Install license_finder
RUN mkdir -p /var/license_action/
WORKDIR /var/license_action/
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["/var/license_action/entrypoint.sh"]
