FROM jenkins-master:latest
ENTRYPOINT service jenkins start  && /bin/bash
CMD ["echo", "Data container for Jenkins"]
CMD ["/bin/bash", "chmod 777 /var/run/docker.sock"]
CMD ["/bin/bash", "mkdir -p /var/lib/docker/tmp/"]
EXPOSE 8080