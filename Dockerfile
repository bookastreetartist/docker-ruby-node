FROM ruby:2.3.5
LABEL maintainer "Thylacinelol <thylacinelol@gmail.com>"

ENV LANG C.UTF-8
ENV REFRESHED_AT 2017-12-18

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qqy && apt-get -qqyy install nodejs yarn && rm -rf /var/lib/apt/lists/*