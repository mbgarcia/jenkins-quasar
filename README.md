## Imagem Docker com Jenkins para build de aplicações Quasar

O arquivo Dockerfile faz o build de uma imagem contendo:

. Jenkins

. NodeJS

. VueJS

. Quasar

Para subir o container Jenkins:

docker run -p 8080:8080 -p 50000:50000 jenkins-debian

## O docker compose sobe containers Jenkins e Gitlab

O usuario default do GitLab é **root**
