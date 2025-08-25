FROM quay.io/keycloak/keycloak:20.0.5

COPY certs/keycloak.p12 /opt/keycloak/certs/keycloak.p12

# Use $PORT provided by Render
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", "--http-port=${PORT}"]