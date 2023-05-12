FROM postgres:alpine

# Install pg_vector extension
RUN apk add \
    git \
    build-base \
    clang \
    llvm

RUN git clone --branch v0.4.1 https://github.com/pgvector/pgvector.git
RUN cd pgvector && make && make install
