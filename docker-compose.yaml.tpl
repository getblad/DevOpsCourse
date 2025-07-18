version: '3.8'


services:
  frontend:
    image: ${REGION}-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY}/frontend:latest
    ports: ['80:80']
    depends_on: ['backend']

  backend:
    image: ${REGION}-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY}/backend:latest
    ports: ['5000:5000']
    environment:
      NODE_ENV: production