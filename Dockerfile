FROM ruby:2.7.2

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    bash \
    bash-completion \
    libffi-dev \
    tzdata \
    postgresql-client \
    postgresql-server-dev-all \
    nodejs \
    npm \
    yarn \
    && rm -rf /var/lib/apt/lists/*


RUN mkdir /app
WORKDIR /app

EXPOSE 3000
EXPOSE 5432

COPY Gemfile .
COPY Gemfile.lock .
RUN gem update bundler
RUN bundle install

CMD ["bash"]