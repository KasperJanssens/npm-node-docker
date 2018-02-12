FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  wget

RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

USER root

ENV NVM_DIR "/root/.nvm"

CMD [".", "\"$NVM_DIR/nvm.sh\""]

RUN . $NVM_DIR/nvm.sh && nvm install node
