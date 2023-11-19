# Base Image
FROM mariadb:10.5.23

# Install Mroonga
RUN apt -y update
RUN apt -y install mariadb-plugin-mroonga

# Start Mysql
CMD /etc/init.d/mariadb start

# Setup
CMD echo "INSTALL SONAME 'ha_mroonga';" | mysql
