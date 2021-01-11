FROM cimg/base:stable
RUN sudo apt-get update && sudo apt-get install -y curl git && \
  curl -fsSL https://git.io/shellspec | sh -s -- --yes
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  sudo ./aws/install
RUN mkdir ${HOME}/bin && \
  curl -sSL https://dl.minio.io/client/mc/release/linux-amd64/mc -o ${HOME}/bin/mc && \
  chmod +x ${HOME}/bin/mc