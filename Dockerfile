FROM python:3.7.2-alpine

ADD xvfb-chromium /usr/bin/xvfb-chromium

RUN apt-get update && apt-get install -y \
    curl xvfb chromium unzip libgconf-2-4 gcc && \
    ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome && \
    ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser && \
    curl -SLO "https://chromedriver.storage.googleapis.com/78.0.3904.70/chromedriver_linux64.zip" && \
    unzip "chromedriver_linux64.zip" -d /usr/local/bin && \
    rm "chromedriver_linux64.zip"


WORKDIR /usr/src/app
