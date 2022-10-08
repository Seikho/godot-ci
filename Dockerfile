FROM mcr.microsoft.com/dotnet/sdk:6.0.401-jammy-amd64

ARG GODOT_VERSION=beta2
ARG GODOT_BIN=Godot_v4.0-${GODOT_VERSION}_linux.x86_64
ARG GODOT_ZIP=${GODOT_BIN}.zip
ARG GODOT_URL=https://downloads.tuxfamily.org/godotengine/4.0/${GODOT_VERSION}/${GODOT_ZIP}

WORKDIR /godot

ENV GODOT_VERSION=beta2 

RUN apt-get update \
  && apt-get install build-essential scons pkg-config libx11-dev libxcursor-dev libxinerama-dev \
  libgl1-mesa-dev libglu-dev libasound2-dev libpulse-dev libudev-dev libxi-dev libxrandr-dev yasm curl zip -y

RUN curl ${GODOT_URL} --output engine.zip && unzip engine.zip

RUN chmod +x ${GODOT_BIN} \
  && ln -s $(pwd)/${GODOT_BIN} /usr/bin/godot

CMD [ "godot" ]
