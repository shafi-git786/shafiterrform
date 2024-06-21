https://chatgpt.com/c/7a4ebd1b-67fe-47a0-9f41-69a42c436f42
--
/subscriptions/d8b3a471-677c-464c-88bb-57b87a78c0ec/resourceGroups/networking-eastus2/providers/Microsoft.Network/virtualNetworks/sc-prod-eastus2-vnet
---

kubectl create secret docker-registry regcred --docker-server=krogertechnology-docker-dev.jfrog.io --docker-username=s5720jfrogp@kroger.com --docker-password=AKCp8k8ES5MiqpifMr67JpFhCez6qp1NHytWgC7de3VVjvPmMoMCSE43xSb8hYPyaf9u67gLn -n asn-prod
--

errors:
Message: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target. ERRORCODE=-4499, SQLSTATE=08001 - Search (bing.com)  -- when changed the runner it worked.
---
jdbc-url:  jdbc:sqlserver://sql-seventy5-eus2n0d.database.windows.net:1433;DatabaseName=sqldb-seventy5db-d;Authentication=ActiveDirectoryDefault;User=3d1dc8ba-ddcd-4228-a5f5-5d09185c777e;Encrypt=true;TrustServerCertificate=true;
 --
git config --global http.proxy http://<EUID>@proxy.ha.kroger.com:3128 
git config --global https.proxy http://<EUID>@proxy.ha.kroger.com:3128
git config --global credential.helper wincred
--
75th app Dockerfile

FROM docker-prod.registry.kroger.com/library/java-openjre:11-latest

EXPOSE 8080

ARG FILE
ENV JAR_FILE=$FILE

WORKDIR /app

COPY $JAR_FILE seventy5-web.jar

ENTRYPOINT java -jar seventy5-web.jar
--
