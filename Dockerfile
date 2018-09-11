FROM circleci/node:8

RUN sudo mkdir -p /opt/app
COPY *.sh /opt/app/

RUN sudo sh /opt/app/setup_lang_ja.sh
RUN sudo sh /opt/app/setup_puppeteer.sh

