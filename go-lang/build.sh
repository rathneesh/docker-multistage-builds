#Build the code with compilers and tools
docker build -t app:dev -f Dockerfile.dev .

#Create a container from the image created from the previous stage
docker create --name app app:dev 

#Copy the binary from the container
docker cp app:/src/app ./app

#Remove the intermediate container
docker rm -f app

#Build the final container
docker build --no-cache -t app:final -f Dockerfile.final .

#cleanup
rm ./app
