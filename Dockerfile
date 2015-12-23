FROM ubuntu
MAINTAINER Oxoox Soulmaneller <oxoox22@gmail.com>

WORKDIR /root

RUN /bin/bash -c 'apt-get install curl git -y \
    && git clone https://github.com/creationix/nvm.git \
    && source /root/nvm/install.sh \
    && rm -rf /root/nvm \
    && source /root/.nvm/nvm.sh \
    && nvm install v4 \
    && nvm alias default 4'

CMD [ "/bin/bash" ]
