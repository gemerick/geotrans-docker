FROM openjdk:8-alpine

WORKDIR /app

ENV geotransVer 3.8
ENV geotransDir /geotrans${geotransVer}

ADD data/linux_user.tgz /

ENV CATALINA_OPTS -Djava.library.path=${geotransDir}/GEOTRANS3/linux_64/:${geotransDir}/CCS/linux_64/
ENV LD_LIBRARY_PATH ${geotransDir}/GEOTRANS3/linux_64/:${geotransDir}/CCS/linux_64/
ENV MSPCCS_DATA ${geotransDir}/data/

CMD ["/bin/sh"]
