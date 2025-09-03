FROM docker.n8n.io/n8nio/n8n:latest

# Set allowed external modules (comma-separated)
ENV NODE_FUNCTION_ALLOW_EXTERNAL=cron-parser

# Install all allowed modules by splitting the env var at commas
RUN npm install $(echo $NODE_FUNCTION_ALLOW_EXTERNAL | tr ',' ' ') \
  && npm list --depth=0