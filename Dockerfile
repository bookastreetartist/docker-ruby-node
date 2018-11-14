FROM ruby:2.3.5
LABEL maintainer "Thylacinelol <thylacinelol@gmail.com>"

ENV LANG C.UTF-8
ENV REFRESHED_AT 2018-11-14

# Add keys for dependencies
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list
# Install dependencies
RUN apt-get update -qqy && apt-get -qqyy install nodejs yarn cmake google-chrome-stable unzip && rm -rf /var/lib/apt/lists/*
# Install Chromedriver
RUN wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip && rm -rf chromedriver_linux64.zip
RUN mv chromedriver /usr/bin/chromedriver
RUN chown root:root /usr/bin/chromedriver && chmod a+x /usr/bin/chromedriver
