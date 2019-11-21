FROM python:3.7.2-slim

RUN apt-get update && apt-get install -y \
    curl xvfb chromium unzip gcc && \
    ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome && \
    ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser && \
    curl -SLO "https://chromedriver.storage.googleapis.com/73.0.3683.68/chromedriver_linux64.zip" && \
    unzip "chromedriver_linux64.zip" -d /usr/local/bin && \
    rm "chromedriver_linux64.zip"
