FROM ubuntu
COPY requirements.txt /work-bench/requirements.txt
RUN apt-get update && \
    apt upgrade -y && \
    DEBIAN_FRONTEND=noninteractive \
    TZ=Europe/Amsterdam \
    apt-get -y install python3 python3-venv pandoc graphviz \
    texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra && \
    rm -rf /var/lib/apt/lists/*
RUN cd /work-bench && \
    python3 -m venv venv && \
    . venv/bin/activate && \
    pip install -r requirements.txt && \
    rm -rf /work-bench