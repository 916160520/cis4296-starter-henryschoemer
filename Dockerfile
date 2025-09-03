FROM rust:latest

LABEL authors="henryschoemer"

# Set the working directory inside the container
WORKDIR /app

# Build the Rust application in release mode
COPY helloworld.rs .

RUN rustc helloworld.rs -o helloworld

# Expose any necessary ports (if your app is a server)
# EXPOSE 8080

# Run the compiled executable
CMD ["./helloworld"]