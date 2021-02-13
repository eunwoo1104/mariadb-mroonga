# Base Image
FROM mariadb/server:10.5

# Install Mroonga
RUN apt -y update
RUN apt -y install mariadb-plugin-mroonga

# Start Mysql
/etc/init.d/mysql start

# Setup
RUN echo "INSTALL SONAME 'ha_mroonga';" > mroonga.sql
RUN mysql < mroonga.sql
