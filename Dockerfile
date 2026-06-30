# Utilise une image de base Java 17 (Temurin est une distribution OpenJDK)
FROM eclipse-temurin:17-jre

# Définit le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copie le fichier JAR de l'application (construit par Maven) dans le conteneur
COPY target/*.jar app.jar

# Expose le port sur lequel l'application Spring Boot écoute (par défaut 8080)
EXPOSE 8080

# Commande pour exécuter l'application lorsque le conteneur démarre
ENTRYPOINT ["java", "-jar", "app.jar"]