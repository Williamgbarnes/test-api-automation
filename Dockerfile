FROM node:carbon

# app workdir
WORKDIR /app

# copy app dependencies
COPY package.json ./

# install dependecies
RUN npm install -g mocha mocha-jenkins-reporter
RUN npm --allow-root install

# build app source code
COPY . ./

RUN chmod +x entrypoint.sh

# runtime configs
ENTRYPOINT ["./entrypoint.sh"]