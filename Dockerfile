FROM nginx:latest
LABEL ifeng fscarmen mack-a ygkkk
EXPOSE 80
USER root
ENV uuid 28872887-057d-4dd1-864e-d5d858b48ad9
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json ./
COPY entrypoint.sh ./
RUN chmod a+x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
