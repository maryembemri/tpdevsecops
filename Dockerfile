FROM eclipse-temurin:21-jdk-jammy 
WORKDIR /app
COPY target/democyber-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]

# on telecharger une image de base qui contient linux jammy et jdk21 nom:tag(pour preciser la version)
# on crrer /app dossier de travail dans le conteneur pour que toute les commande executer dans ce dossier (mkdir app puis cd app)
#copier le fichierde ton pc vers l'image docker  et le renommer en app.jar
#indiquer que l'application ecoute sur le port 8080
#la commande executer au demarrage du conteneur est java -jar app.jar pour lancer l'application