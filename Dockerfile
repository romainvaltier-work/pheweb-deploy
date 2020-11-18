FROM ubuntu
RUN apt-get update && apt-get install -y     python3-pip     python3-dev     libz-dev     libffi-dev     && rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install pheweb
EXPOSE 8080
ENV PHEWEB_DIR ./
CMD cd  $PHEWEB_DIR && pheweb serve --port 8080
