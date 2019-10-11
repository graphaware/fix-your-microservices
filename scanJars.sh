cp test-files/api-docs.yml PiggyMetrics/statistics-service/src/main/resources

mvn clean package -DskipTests -f PiggyMetrics/pom.xml

./jqassistant/bin/jqassistant.sh scan -reset -p config/scan.properties -f PiggyMetrics/account-service/target/account-service.jar, \
  PiggyMetrics/auth-service/target/auth-service.jar,\
  PiggyMetrics/notification-service/target/notification-service.jar,\
  PiggyMetrics/statistics-service/target/statistics-service.jar,\
  PiggyMetrics/config/target/config.jar -storeUri bolt://localhost -storeUsername neo4j -storePassword password
