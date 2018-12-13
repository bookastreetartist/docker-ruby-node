FROM ruby:2.3.5
LABEL maintainer "Thylacinelol <thylacinelol@gmail.com>"

ENV LANG C.UTF-8
ENV REFRESHED_AT 2018-12-13

# Add keys for dependencies
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Install dependencies
RUN apt-get update -qqy && apt-get -qqyy install nodejs yarn cmake && rm -rf /var/lib/apt/lists/*
