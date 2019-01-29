FROM opensuse:42.3
# sle12 -> sles12sp3:2.0.2 (python 3.4 default)

MAINTAINER Lukas Schmid

RUN set -x \
    && zypper -n --gpg-auto-import-keys ref -s \
    && zypper -n in python3 \
    && ln /usr/bin/python3 /usr/bin/python \
    && zypper -n in python3-pip \
    && zypper clean -a

COPY ["data/pip.conf", "/root/.pip/pip.conf"]

RUN pip install --upgrade \
    pip \
    setuptools

RUN zypper -n in gcc python3-devel

RUN pip install numpy
RUN pip install scikit-learn==0.20.2

CMD ["python3"]
