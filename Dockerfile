FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install python-pip \
                       git \
                       graphviz \
                       findutils \
                       gfortran && \
                       pip install ford

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser

USER appuser
