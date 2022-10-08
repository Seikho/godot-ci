GODOT_VERSION=beta2
GODOT_BIN=Godot_v4.0-${GODOT_VERSION}_linux.x86_64
GODOT_ZIP=${GODOT_BIN}.zip
GODOT_URL=https://downloads.tuxfamily.org/godotengine/4.0/${GODOT_VERSION}/${GODOT_ZIP}

docker build --build-arg GODOT_VERSION=${GODOT_VERSION} --build-arg GODOT_BIN=${GODOT_BIN} --build-arg GODOT_ZIP=${GODOT_ZIP} --build-arg GODOT_URL=${GODOT_URL} -t seikho/godot-4:${GODOT_VERSION} .