# Let's start from the alpine image (it's lean and mean linux)
FROM node:8-alpine   
# Let's create a dir for our source code
RUN mkdir -p /usr/src/app
# Let's make that our working dir
WORKDIR /usr/src/app
# Let's copy everything from our current dir (i.e. our code) into our new work dir
COPY . .
# Restore packages
RUN npm install
# Expose port 3000 so we can chat
EXPOSE 3000
# Run node server.js
CMD [ "node", "server.js" ]