FROM ruby:2.7-alpine

# Install license_finder
RUN mkdir -p /app/
WORKDIR /app/
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

COPY entrypoint.sh entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
