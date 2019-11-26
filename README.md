# Docker practice

[1.10 - Front-end](./frontend/1.10.Dockerfile)

To COPY exclude file Dockerfile need to used ` .dockerignore`
- Write ` *Dockerfile ` to `.dockerignore` (to be ignore all dockerfile when use ADD or COPY )

Command runn Front end project
- Build images : `docker build -f 1.10.Dockerfile -t frontend:1.0 .`
- Run container: `docker run -d -p 5000:5000 --name frontend-app frontend:1.0`

[1.11 - Back-end](./backend/1.11.Dockerfile)

To COPY exclude file Dockerfile need to used ` .dockerignore`
- Write ` *Dockerfile ` to `.dockerignore` (to be ignore all dockerfile when use ADD or COPY )

Command run Back end project 
- Build images: ` docker run -f 1.11.Dockerfile -t backend:1.0 . `
- Run container: ` docker run -d -p 8000:8000 --name backend-app backend:1.0`

[1.12 - Run web-app]()

- Run [frontend](./frontend/1.12.Dockerfile):
  - Build images : `docker build -f 1.12.Dockerfile -t frontend:1.0 .`
  - Run container: `docker run -d --env URL="http://ip-host:8000"  -p 5000:5000 --name frontend-app frontend:1.0` 
- Run [backend](./backend/1.12.Dockerfile):
  - Build images: ` docker build -f 1.12.Dockerfile -t backend:1.0 . `
  - Run container: ` docker run -d --env URL="http://ip-host:5000 -p 8000:8000 --name backend-app backend:1.0`



[2.3 Docker Compose](./docker-compose-2.3x.yml)
  
  - Login docker hub : ` docker login --username=<username>` 


  - Write environment `IP_HOST=<ip-host>`  to file `.env`:
     
  - Build images: 
    - Frontend: ` docker build -f 1.12.Dockerfile -t <username>/frontend:1.0 .`
    - Backend: ` docker build -f 1.12.Dockerfile -t <username>/backend:1.0 .`
  - Push image to Docker hub:
    - Frontend: ` docker push <username>/frontend-app:1.0 `
    - Backend: ` docker push <username>/backend-app:1.0 `

  - Run docker-compose with file yml :`  docker-compose -d   up `

[3.3 - Front-end ](./frontend/3.3.Dockerfile)

[3.3 - Back-end ](./backend/3.3.Dockerfile)
  





