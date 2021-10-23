# build on another image
FROM node:14-alpine

WORKDIR /mydir

# install app dependencies
# source(host) target(image)
COPY package*.json .

# executes on image
RUN npm install

# bundle app source
COPY . .

EXPOSE 3000

# marking RUN command as entry point
CMD [ "npm", "run", "start" ]