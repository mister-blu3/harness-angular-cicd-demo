# Stage 1: Build Angular App
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build --prod

# Stage 2: Serve with NGINX
FROM nginx:stable-alpine
COPY --from=build /app/dist/ikurtz-tour-of-heroes /usr/share/nginx/html
# Optional: Custom nginx.conf (for SPA routing)
# COPY nginx.conf /etc/nginx/nginx.conf
