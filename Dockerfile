# Soecified a base image
FROM alpine

# install dependencies
RUN npm install

# Default command
CMD ["npm", "start" ]