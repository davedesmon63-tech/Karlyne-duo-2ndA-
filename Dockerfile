FROM nginx:alpine

# Supprime la page nginx par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copie ton site
COPY index.html /usr/share/nginx/html/index.html

# Expose le port
EXPOSE 80

# Lance nginx
CMD ["nginx", "-g", "daemon off;"]
