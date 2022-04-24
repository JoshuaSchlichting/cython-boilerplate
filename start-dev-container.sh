# Attach your IDE to the container

IMAGE_NAME=cython-boilerplate

docker build -t $IMAGE_NAME .
docker run \
    -d \
    -t \
    --rm \
    --mount type=bind,source="$(pwd)",target=/app \
    --entrypoint "/bin/bash" \
    --name $IMAGE_NAME \
    $IMAGE_NAME