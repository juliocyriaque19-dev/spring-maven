# Utilisation d'une image de base officielle et légère (Eclipse Temurin JDK 17)
FROM eclipse-temurin:17-jre[cite: 1]

# Définition du répertoire de travail
WORKDIR /app

# Ajout d'un utilisateur non-root pour respecter les normes DevSecOps
RUN useradd -m -u 1001 devsecopsuser
USER 1001

# Copie de l'artefact JAR généré par le build Maven
COPY target/*.jar app.jar[cite: 1]

# Exposition du port par défaut de Spring Boot
EXPOSE 8080[cite: 1]

# Commande d'exécution sécurisée
ENTRYPOINT ["java", "-jar", "app.jar"][cite: 1]