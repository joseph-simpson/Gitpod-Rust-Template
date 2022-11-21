FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get -q update \
    && sudo apt-get install -yq \
    libpython3.6 \
    rust-lldb \
    && sudo rm -rf /var/lib/apt/lists/*

ENV RUST_LLDB=/usr/bin/lldb-8

RUN set disable-randomization off # avoid warning when debugging: https://stackoverflow.com/questions/35860527/warning-error-disabling-address-space-randomization-operation-not-permitted