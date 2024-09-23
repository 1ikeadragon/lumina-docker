# Lumina Docker

Dockerized setup for Hexvault & Lumina. Easy to spin-up and use. 

>Requires you have a legally purchased copy of IDA PRO and addons: private Lumina server & HexVault.

## Usage
1. Move your Lumina files into `/files/lumina` folder and Hexvault files into `files/hexvault`.
2. Build the Dockerfile `docker build -t lumina`.
3. `docker run -d -p 65433:65433 -p 65432:65432 lumina`
4. Use `hv` to connect to hexvault server and add/edit users.
5. Then log into it with your created user. You'll find the documentation in official admin guide.
6. Open your IDA and connect to the lumina server with the creds you created.
Enjoy.
