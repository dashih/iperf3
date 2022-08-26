FROM ubuntu:22.04
EXPOSE 5201
RUN apt-get update
RUN apt-get install -y iperf3=3.9-1build1
ENTRYPOINT iperf3 --server
HEALTHCHECK CMD iperf3 --client localhost --bytes 1
