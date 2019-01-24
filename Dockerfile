# Use official NodeJS 10.x image
FROM node:10

# Install latest stable Google Chrome to run headless tests against
# Installation commands taken from: https://github.com/SeleniumHQ/docker-selenium/blob/master/NodeChrome/Dockerfile
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
    && apt-get update -qy \
    && apt-get install -qy google-chrome-stable \
    && rm /etc/apt/sources.list.d/google-chrome.list
