FROM frolvlad/alpine-miniconda3

MAINTAINER Pascal Pellmont <pascal.pellmont.3@css.ch>
MAINTAINER Lukas Schmid <lukas.schmid@css.ch>

COPY ["data/.condarc", "/root/"]
COPY ["data/pip.conf", "/root/.pip/pip.conf"]
COPY ["data/environment.yml", "/app/"]

RUN conda env create --file app/environment.yml -p /env
