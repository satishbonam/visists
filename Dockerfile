# use existing base image
FROM node:alpine

WORKDIR '/app'

# Download and install a dependency
COPY package.json .
RUN npm install
COPY . .


# Tell the image what to do when it starts as a container
CMD ["npm","start"]