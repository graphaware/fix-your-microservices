./jqassistant/bin/jqassistant.sh scan -reset -p config/scan.properties -f PiggyMetrics/account-service/target/account-service.jar, \
  PiggyMetrics/auth-service/target/auth-service.jar,\
  PiggyMetrics/notification-service/target/notification-service.jar,\
  PiggyMetrics/statistics-service/target/statistics-service.jar,\
  PiggyMetrics/config/target/config.jar -storeUri bolt://localhost -storeUsername neo4j -storePassword password
