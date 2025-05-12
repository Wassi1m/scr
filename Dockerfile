FROM ubuntu:22.04

# Installer les dépendances de base
RUN apt-get update && \
    apt-get install -y bash curl && \
    apt-get clean

# Copier ton script dans l'image
COPY mon_script.sh /mon_script.sh
RUN chmod +x /mon_script.sh

# Commande par défaut : exécuter ton script
CMD ["/mon_script.sh"]
