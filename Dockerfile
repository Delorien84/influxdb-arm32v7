FROM arm32v7/busybox
ARG version=1.3.2
RUN wget https://dl.influxdata.com/influxdb/releases/influxdb-${version}_linux_armhf.tar.gz && \
	tar xvfz influxdb-${version}_linux_armhf.tar.gz && \
	rm influxdb-${version}_linux_armhf.tar.gz && \
	cp -av influxdb-*/* / && \
        rm -fr influxdb-*
EXPOSE 8086
ENTRYPOINT ["/usr/bin/influxd"]

