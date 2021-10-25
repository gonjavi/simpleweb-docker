# Specifiy a base image
FROM node:alpine
WORKDIR /usr/app

# install dependencies ./ url relative del proyecto  y el segundo ./ donde se va poner en el contenedor
# con esta instrucción npm solo va correr si ve un cambio en el package.json
COPY ./package.json ./ 
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start" ]