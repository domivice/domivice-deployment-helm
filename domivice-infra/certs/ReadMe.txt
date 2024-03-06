Import SonarQube cert into java keystore

openssl s_client -connect sonarqube.domivice.dev:443 </dev/null | openssl x509 -outform PEM > sonarqube.domivice.crt && keytool -import -trustcacerts -file sonarqube.domivice.crt -keystore /Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home/lib/security/cacerts -alias sonarqube.domivice.dev -storepass changeit -noprompt -cacerts
