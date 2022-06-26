FROM ubuntu
COPY requirements.txt /work-bench/requirements.txt
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    TZ=Europe/Amsterdam \
    apt-get -y install python3 pip pandoc graphviz \
    texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra && \
    rm -rf /var/lib/apt/lists/*
RUN cd /work-bench && \
    pip install -r requirements.txt && \
    rm -rf /work-bench