FROM node:12

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH=/root/.cargo/bin:$PATH
RUN rustup -V && which rustup && echo $PATH
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh