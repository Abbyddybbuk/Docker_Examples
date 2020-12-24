# Use an existing docker image as a base
FROM alpine

# download and install a dependency
RUN apk add --update redis
RUN apk add --update gcc

# Tell the image what to do when it starts as a container
CMD ["redis-server"]

# execute docker build . in terminal to build an image
# Finally run docker run <container_id> to run the container out of the image