sudo su
yum install -y wget
mkdir /opt/redis
cd /opt/redis
wget -q http://download.redis.io/redis-stable.tar.gz
tar -xvf redis-stable.tar.gz
cd redis-stable
make
make install
#backup original config file
#mv /etc/redis.conf /etc/redis.conf.original
mkdir -p /etc/redis
mkdir -p /var/redis/6379
chmod -R 777 /var/redis/6379
useradd redis
cp -u /vagrant/redis.conf /etc/redis/6379.conf
cp -u /vagrant/redis_6379 /etc/init.d/redis_6379

chkconfig redis_6379 on

chmod a+x /etc/init.d/redis_6379
/etc/init.d/redis_6379 start