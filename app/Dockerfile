# Fase de construcción
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install --only=production

# Fase final ligera
FROM node:20-alpine AS runner
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY app.js package.json ./

USER node
EXPOSE 3000
CMD ["node", "app.js"]