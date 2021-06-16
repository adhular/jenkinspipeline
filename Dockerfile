### STAGE 1: Build ###
FROM 729150221553.dkr.ecr.us-west-2.amazonaws.com/alpinenode:node AS build
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

### STAGE 2: Run ###
FROM 729150221553.dkr.ecr.us-west-2.amazonaws.com/alpinenode:nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/src/app/dist/aston-villa-app /usr/share/nginx/html
