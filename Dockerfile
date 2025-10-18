FROM ubuntu:24.04
EXPOSE 5201
RUN apt-get update
RUN apt-get install -y iperf3=3.16-1build2
ENTRYPOINT iperf3 --server
HEALTHCHECK CMD iperf3 --client localhost --bytes 1
