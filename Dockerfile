# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.31.0
COPY generate_changelog.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
