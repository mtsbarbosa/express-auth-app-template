FROM node:latest
RUN mkdir -p /opt/work/workspace/express-auth-app-template
WORKDIR /opt/work/workspace/express-auth-app-template
COPY package.json /opt/work/workspace/express-auth-app-template/
RUN npm install
COPY . /opt/work/workspace/express-auth-app-template
ARG NODE_ENV
ARG NODE_DATABASE_URL
ENV NODE_ENV "$NODE_ENV"
ENV NODE_DATABASE_URL "$NODE_DATABASE_URL"
EXPOSE 3000
CMD npm start
