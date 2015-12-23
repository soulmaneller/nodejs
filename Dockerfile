FROM ubuntu
MAINTAINER Oxoox Soulmaneller <oxoox22@gmail.com>

WORKDIR /root

RUN /bin/bash -c 'apt-get install curl git -y \
    #~ && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash \
    && git clone https://github.com/creationix/nvm.git \
    && source /root/nvm/install.sh \
    && source /root/.nvm/nvm.sh \
    && nvm install v4 \
    #~ && nvm use 4 \
    && nvm alias default 4'

CMD [ "/bin/bash" ]
