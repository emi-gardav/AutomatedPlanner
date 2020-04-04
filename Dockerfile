FROM ubuntu:18.04

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y \
            xz-utils \
            build-essential \
            multiarch-support \
            gcc-multilib \
            g++-multilib \
            libc6:i386 \
            libncurses5:i386 \
            libstdc++6:i386 \
            flex \
            bison \
            git
RUN mkdir bb_print && \
    mkdir blackbox_planner && \
    git clone https://gitlab.com/ppGodel/BlackBox.git ./blackbox_planner && \
    cd blackbox_planner && \
    make blackbox && \
    cp blackbox /


CMD ["/blackbox" ,"-h"]
