FROM golang:1.22 as builder

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go mod and sum files to download dependencies
# Doing this before copying the entire source ensures we cache the layer with dependencies
COPY go.mod ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go app
# -o specifies the output binary name, in this case app
# CGO_ENABLED=0 to build a statically-linked binary
# GOOS=linux and GOARCH=amd64 to ensure compatibility with the Docker container environment
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o run-server .

# Start a new stage from scratch to minimize the size of the final image
FROM scratch

WORKDIR /app

# Copy the Pre-built binary file from the previous stage. Also, copy any other files/directories your app needs during runtime.
COPY --from=builder /app/run-server .

# Command to run the executable
CMD ["/app/run-server"]

