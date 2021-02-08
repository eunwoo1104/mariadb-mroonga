FROM mariadb/server:10.5

RUN apt install mariadb-plugin-mroonga

RUN echo "INSTALL SONAME 'ha_mroonga';" > mroonga.sql