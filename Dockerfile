FROM python:3.6-alpine

MAINTAINER Lukas Schmid

COPY pip.conf /root/.pip/pip.conf

RUN apk add gcc g++

RUN pip install numpy

RUN apk add openblas-dev #Required for scikit-learn lapack-dev
RUN pip install scikit-learn
