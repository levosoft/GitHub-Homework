# GitHub-Homework

Ez a repository egy **DevOps házi feladat** megoldását tartalmazza.  
A cél egy **CI/CD pipeline létrehozása GitHub Actions segítségével**, amely:
- Automatikusan épít egy **Docker image-et** egy **Dockerfile** alapján.
- Feltölti az image-et a **Docker Hub fiókba**.
- Az image egy **Nginx alapú szervert** indít, amely a főoldalon a következő szöveget jeleníti meg:  
  **"DevOps Homework by: SAJÁT_NEVED"**.

## 📂 **Tartalom**
- **Dockerfile**: Egy **Nginx alapú Docker image**, amely testreszabott főoldalt tartalmaz.
- **GitHub Actions Workflow**: Automatikus **Docker build és push** a Docker Hubra.
- **README.md**: Ez a fájl, amely elmagyarázza a repository célját és használatát.

## 🚀 **Használat**

### 1️⃣ **Docker image letöltése és futtatása**
A kész image futtatásához használd az alábbi parancsot:
docker run -p 8080:80 DOCKERHUB_USERNAME/homework:latest

Ezután nyisd meg a böngészőt: http://localhost:8080
A főoldalon a következő szövegnek kell megjelennie:
DevOps Homework by: SAJÁT_NEVED

### 2️⃣ CI/CD pipeline működése
Minden alkalommal, amikor push történik a main branch-re, a GitHub Actions:

Felépíti a Docker image-et a Dockerfile alapján.
Bejelentkezik a Docker Hub fiókba (a hitelesítés GitHub Secrets-ben van tárolva).
Feltölti az image-et a Docker Hub repository-ba homework:latest néven.

## 🔒 Titkos információk kezelése
A Docker Hub felhasználónév és jelszó (token) NINCS a repository-ban.
Az érzékeny adatok a GitHub Secrets segítségével kerülnek beállításra (DOCKER_USERNAME, DOCKER_PASSWORD).