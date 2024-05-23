# Utilisez l'image officielle Python en tant qu'image de base
FROM python:3.9

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installez les dépendances du projet

# Copiez le reste du code source dans le conteneur
COPY . .

# Exposez le port sur lequel l'application fonctionnera
EXPOSE 8000

# Démarrez l'application Django en utilisant manage.py
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
