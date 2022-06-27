FROM node:16.15.0-alpine AS builder
WORKDIR /app/
COPY . .

ENV PORT=3000
EXPOSE ${PORT}
RUN npm install -g nx
RUN npm install

RUN nx build %componen_name% --verbose

ENV SERVER_NAME=""
COPY --from=builder /app/dist ./dist

WORKDIR /dist/apps/%componen_name%
RUN npm install
# dependencies that nestjs needs
RUN npm install reflect-metadata tslib rxjs passport pg bcryptjs passport-jwt

# ... same builds

WORKDIR /dist/apps/
ENTRYPOINT node ./${SERVER_NAME}/main.js