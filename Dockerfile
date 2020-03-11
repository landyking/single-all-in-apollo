FROM nobodyiam/apollo-quick-start

RUN sed -i "/apollo_config_db_url=/c apollo_config_db_url=jdbc:mysql://\${CONFIG_DB_HOST_PORT:-localhost:3306}/ApolloConfigDB?characterEncoding=utf8" /apollo-quick-start/demo.sh
RUN sed -i "/apollo_config_db_username=/c apollo_config_db_username=\${CONFIG_DB_USER:-root}" /apollo-quick-start/demo.sh
RUN sed -i "/apollo_config_db_password=/c apollo_config_db_password=\${CONFIG_DB_PASS:-}" /apollo-quick-start/demo.sh

RUN sed -i "/apollo_portal_db_url=/c apollo_portal_db_url=jdbc:mysql://\${PORTAL_DB_HOST_PORT:-localhost:3306}/ApolloPortalDB?characterEncoding=utf8" /apollo-quick-start/demo.sh
RUN sed -i "/apollo_portal_db_username=/c apollo_portal_db_username=\${PORTAL_DB_USER:-root}" /apollo-quick-start/demo.sh
RUN sed -i "/apollo_portal_db_password=/c apollo_portal_db_password=\${PORTAL_DB_PASS:-}" /apollo-quick-start/demo.sh

EXPOSE 8070 8080

# CMD ["bash","-x","/apollo-quick-start/demo.sh", "start"]
CMD ["/apollo-quick-start/demo.sh", "start"]