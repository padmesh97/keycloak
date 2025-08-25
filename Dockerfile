FROM quay.io/keycloak/keycloak:20.0.5

# Copy keystore
COPY certs/keycloak.p12 /opt/keycloak/certs/keycloak.p12

# Expose Keycloak port
EXPOSE 8443

# Start Keycloak with env vars from Render
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]