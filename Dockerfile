FROM node:latest AS builder

WORKDIR /app

COPY architecture/ .

RUN npx likec4 build --output arch

FROM nginx:latest

COPY --from=builder /app/arch /usr/share/nginx/html/
EXPOSE 80