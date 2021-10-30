FROM haskell:8

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    apt-utils gcc g++ openssh-server cmake build-essential gdb \
    gdbserver rsync vim locales

RUN apt-get install -y bzip2 wget gnupg dirmngr apt-transport-https \
	ca-certificates openssh-server tmux && \
    apt-get clean

RUN mkdir /var/run/sshd && \
    echo 'root:root_pwd' |chpasswd && \
    sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' \
    /etc/ssh/sshd_config && \
    sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config && \
    mkdir /root/.ssh

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*