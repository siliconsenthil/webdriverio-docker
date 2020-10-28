FROM selenium/standalone-chrome-debug
RUN sudo apt-get update && \
    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && \
    sudo apt-get install -y nodejs
WORKDIR /workspace
USER root
COPY package-lock.json package.json ./
RUN npm install
COPY . .
CMD ["./run-tests.sh"]
