FROM rileymathews/base:latest
WORKDIR /tmp
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o install.sh \
    && chmod +x install.sh
RUN ./install.sh -v -y
RUN rm -rf /tmp/install.sh

ENV PATH /root/.cargo/bin:$PATH

WORKDIR /code
