FROM node:16-alpine


# make the 'app' folder the current working directory
WORKDIR /frontend


# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN npm install --force
# Run npm install @vuepic/vue-datepicker
# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .