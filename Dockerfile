#Base Image
FROM node:alpine

#Working Directory of our app in the container
WORKDIR '/app'

#Copying dependencies file from current dir in local to current dir in the container
COPY package.json .

#Execute npm to install dependencies
RUN npm install

#Copy all file changes from current dir in local to current dir in the container
COPY . .

#Execute at container runtime
CMD [ "npm", "start" ]
