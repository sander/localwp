PORT = 8000

server:
	cd wordpress && php -Slocalhost:${PORT}
	#-twordpress

dbstart:
	mysql.server start

dbsetup:
	cat setup.sql | mysql -uroot -B

afterwpsetup:
	sed -ie "s/\(\/\* That's all, stop editing! Happy blogging. \*\/\)/define( 'WP_ALLOW_MULTISITE', true);"$$'\\\n\\\n'"\1/g" wordpress/wp-config.php
