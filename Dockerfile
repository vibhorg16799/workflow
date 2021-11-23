#Use the node:10-alpine image as a base to
#create a directory for the app and its node_modules with node as its owner
#install all packages in package.json
#expose port 8080 and run the app
#the docker lecture will help you complete this file 
#there should be a total of 9 lines

FROM node:12-alpine

RUN mkdir -p /node/app/ 
WORKDIR /node/app
COPY package.json ./
RUN npm install
EXPOSE 8080
USER node
COPY --chown=root:root . .
CMD ["node", "app.js"]