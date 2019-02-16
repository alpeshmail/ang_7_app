# Stage 0, "build-stage", based on Node.js, to build and compile the frontend
FROM nginx:alpine
LABEL author="Alpesh Patel"
COPY ./dist usr/share/nginx/html
EXPOSE 80 443
ENTRYPOINT [ "nginx","-g","daemon off;" ]