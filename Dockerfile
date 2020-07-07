FROM openjdk:8-alpine

ENV geotransVer 3.8
ENV geotransDir /geotrans${geotransVer}

WORKDIR /app

RUN wget ftp://ftp.nga.mil/pub2/gandg/website/wgs84/apps/geotrans/current-version/sw/end_user_version/linux_user.tgz -O /linux_user.tgz
RUN tar xfz /linux_user.tgz -C /
RUN rm -rf /linux_user.tgz

ENV CATALINA_OPTS -Djava.library.path=${geotransDir}/GEOTRANS3/linux_64/:${geotransDir}/CCS/linux_64/
ENV LD_LIBRARY_PATH ${geotransDir}/GEOTRANS3/linux_64/:${geotransDir}/CCS/linux_64/
ENV MSPCCS_DATA ${geotransDir}/data/

CMD ["/bin/sh"]
