# Dockerfile: تشغيل n8n على Render
FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

# اجعل Render يعرف البورت
ENV PORT=5678
EXPOSE 5678

# شغّل n8n صراحة على 0.0.0.0 (مش localhost)
CMD ["n8n", "start", "--tunnel", "--port", "5678", "--host", "0.0.0.0"]