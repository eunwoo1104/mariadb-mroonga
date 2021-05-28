# Base Image
FROM mariadb/server:10.5

# Install Mroonga
RUN apt -y update
RUN apt -y install mariadb-plugin-mroonga

# Start Mysql
CMD /etc/init.d/mariadb start

# Setup
CMD echo "INSTALL SONAME 'ha_mroonga';" | mysql
