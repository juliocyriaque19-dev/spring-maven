# Utilisation d'une image de base officielle et légère
FROM eclipse-temurin:17-jre

# Définition du répertoire de travail
WORKDIR /app

# Ajout d'un utilisateur non-root pour respecter les normes DevSecOps
RUN useradd -m -u 1001 devsecopsuser
USER 1001

# Copie de l'artefact JAR généré par le build Maven
COPY target/*.jar app.jar

# Exposition du port par défaut de Spring Boot
EXPOSE 8080

# Commande d'exécution sécurisée
ENTRYPOINT ["java", "-jar", "app.jar"]