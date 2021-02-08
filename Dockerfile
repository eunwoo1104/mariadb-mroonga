FROM mariadb/server:10.5

RUN apt -y install mariadb-plugin-mroonga

RUN echo "INSTALL SONAME 'ha_mroonga';" > mroonga.sql