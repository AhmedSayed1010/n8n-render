# Dockerfile
FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

# لازم Render يعرف البورت
ENV PORT=5678
ENV HOST=0.0.0.0
EXPOSE 5678

# مفيش CMD هنا، الصورة الأصلية فيها ENTRYPOINT بيشغل n8n تلقائيًا