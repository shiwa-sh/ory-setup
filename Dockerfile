FROM oryd/kratos:v1.3.1

# Copy configuration files into the image
COPY ./config/kratos.yml /etc/config/kratos/kratos.yml
COPY ./config/identity.schema.json /etc/config/kratos/identity.schema.json
COPY ./config/oidc.google.jsonnet /etc/config/kratos/oidc.google.jsonnet

# Set the config file path as default
ENV CONFIG_FILE=/etc/config/kratos/kratos.yml

# Expose the ports
EXPOSE 4433 4434
