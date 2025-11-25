# image de nginx que je veux utiliser
FROM nginx

# Repertoire qui va etre generer dans le conteneur
WORKDIR /inception

# Copier dans ce dossier
# COPY . .

# Installer les trucs supp qui vont etre utile
RUN nginx

# Exposer les ports
EXPOSE 5000

# Lancer
CMD nginx