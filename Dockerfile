FROM ubuntu:xenial

RUN apt-get update \
&& apt-get -y upgrade \
&& apt-get -y install \
python3 \
python3-pip \
xvfb \
wget \
vim \
firefox \
firefox-locale-ja \
fonts-ipaexfont-gothic \
fonts-ipafont-gothic \
&& wget https://github.com/mozilla/geckodriver/releases/download/v0.14.0/geckodriver-v0.14.0-linux64.tar.gz \
&& tar zxvf geckodriver-v0.14.0-linux64.tar.gz \
&& rm geckodriver-v0.14.0-linux64.tar.gz \
&& mv geckodriver /usr/local/bin \
&& pip3 install --upgrade pip \
&& pip3 install selenium pyvirtualdisplay \
&& mkdir /work

VOLUME /work
WORKDIR /work
CMD ["python3"]
