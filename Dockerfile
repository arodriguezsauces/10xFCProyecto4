FROM mysql

# Copia los scripts de inicialización a la ruta esperada por la imagen oficial
COPY ./my.cnf /etc/mysql/conf.d/my.cnf
COPY ./init /docker-entrypoint-initdb.d/

# Opcional: configura el charset y collation por defecto
ENV MYSQL_DATABASE=bd_biblioteca \
    MYSQL_USER=user_biblioteca \
    MYSQL_PASSWORD=pass_biblioteca \
    MYSQL_ROOT_PASSWORD=root_pass
