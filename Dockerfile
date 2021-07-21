FROM postgres:13

ADD ./mvp_schema.sql /docker-entrypoint-initdb.d