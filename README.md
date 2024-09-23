# Lumina Docker

Dockerized setup for Lumina90. Easy to spin-up and maintain. 

## Usage
1. Move your Lumina files into `/files/lumina` folder and Hexvault files into `files/hexvault`.
2. Build the Dockerfile `docker build -t lumina`.
3. `docker run -d -p 65433:65443 -p 65432:65432 lumina`
Enjoy.
