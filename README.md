# Lumina Docker

Dockerized setup for Lumina90. Easy to spin-up and maintain. 

>Requires you have a legally purchased copy of IDA PRO and addons: private Lumina server & HexVault.

## Usage
1. Move your Lumina files into `/files/lumina` folder and Hexvault files into `files/hexvault`.
2. Build the Dockerfile `docker build -t lumina`.
3. `docker run -d -p 65433:65443 -p 65432:65432 lumina`
4. Use `hv` to connect to hexvault server with `hexvault:hexvault` and change the password to something secure.
5. Then create a new user `lumina` with pass `lumina`. You'll find the documentation in official admin guide.
6. Open youre IDA and connect to the lumina server with the creds you created.
Enjoy.
