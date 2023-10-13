FROM ubuntu:22.04

WORKDIR /work/setup
RUN curl https://get.volta.sh | bash && \
    volta install node@18 && \
    rm -rf /work/setup

WORKDIR /work
RUN volta pin node@18

