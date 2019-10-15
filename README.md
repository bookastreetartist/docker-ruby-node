# Ruby + Nodejs Docker Image

This Docker image contains:
* ruby:2.6.5 (official)
* nodejs 10.15.2
* yarn 1.19.0
* chromedriver 77.0.3865.40
* google-chrome 77.0.3865.90

## Usage

Add `image: thylacinelol/docker-ruby-node` to your `bitbucket-pipelines.yml`

## Maintenance

- Update Dockerfile
- Build the image locally:
  ```
  docker build -t test_image .
  ```
- Run the test image and make sure everything is correct:
  ```
  docker run -i -t test_image:latest /bin/bash
  ```
- Login to docker
  ```
  docker login
  ```
- Build the release version (latest)
  ```
  docker build -t thylacinelol/docker-ruby-node:latest .
  ```
- Push the latest image to docker hub
  ```
  docker push thylacinelol/docker-ruby-node:latest
  ```

## Thanks

morantron [@Morantron](https://twitter.com/Morantron) / [https://github.com/Morantron](https://github.com/Morantron)
