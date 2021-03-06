FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
        git \
	sudo \
	curl \
	jq \
        xz-utils \
	python3-pip

RUN sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/aureliancnx/Bubulle-Norminette/master/install_bubulle.sh)"

RUN ln -s /usr/bin/python3 /usr/bin/python & \
    ln -s /usr/bin/pip3 /usr/bin/pip

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
