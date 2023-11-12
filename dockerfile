# Utilisez une image Node.js comme base
FROM node:18 as build

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez le fichier package.json et package-lock.json (le cas échéant)
COPY package*.json ./

# Installez les dépendances du projet
RUN npm install

# Copiez le reste des fichiers de l'application
COPY . .

# Construisez l'application Angular pour la production
RUN npm run build --prod

# Exposez le port 80 (ou le port que vous utilisez pour l'application Angular)
EXPOSE 4200

# Commande pour démarrer l'application lorsque le conteneur démarre
CMD ["npm", "start"]