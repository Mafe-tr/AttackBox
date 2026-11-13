FROM kalilinux/kali-rolling

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        binutils \
        binwalk \
        ca-certificates \
        clinfo \
        curl \
        dirb \
        dnsutils \
        file \
        gpg \
        gobuster \
        gzip \
        hashcat \
        iputils-ping \
        john \
        mesa-opencl-icd \
        netcat-openbsd \
        nmap \
        ocl-icd-libopencl1 \
        openssh-client \
        sshpass \
        unzip \
        pinentry-curses \
        pocl-opencl-icd \
        procps \
        python3 \
        sed \
        wordlists \
    && gzip -dk /usr/share/wordlists/rockyou.txt.gz \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
CMD ["/bin/bash"]
