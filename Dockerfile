FROM ubuntu as builder

RUN apt update && apt install -y wget unzip
RUN mkdir -p /opt/softwareag/IntegrationServer/packages/WxConfig
RUN wget http://github.com/sag-nokroeger/WxConfigLight/raw/main/releases/2.2.0/WxConfig.zip
RUN unzip -d /opt/softwareag/IntegrationServer/packages/WxConfig WxConfig.zip

FROM sagcr.azurecr.io/webmethods-microservicesruntime:10.11.0.2
COPY --from=builder --chown=sagadmin:sagadmin /opt/softwareag/IntegrationServer/packages/WxConfig /opt/softwareag/IntegrationServer/packages/WxConfig
COPY --chown=sagadmin:sagadmin source/IS/package-configs /opt/softwareag/IntegrationServer/packages
COPY --chown=sagadmin:sagadmin source/IS/packages /opt/softwareag/IntegrationServer/packages

WORKDIR /opt/softwareag/IntegrationServer/bin
RUN ./jcode.sh makeall WxSchemaImporter && ./jcode.sh makeall WxXOEV
WORKDIR /

