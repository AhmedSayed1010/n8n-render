# Dockerfile: بسيط ويستخدم الصورة الرسمية لن8ن
FROM n8nio/n8n:latest

# تهيئة folder البيانات (n8n يخزن في /home/node/.n8n)
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

# اختياري: اظهر البورت (n8n يستعمل 5678 افتراضياً)
EXPOSE 5678

# الافتراضي ENTRYPOINT/CMD أصل الصورة سيشغّل n8n تلقائياً