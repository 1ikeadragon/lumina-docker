1. Install hexvault90_x64linux.run with default options
2. Go to /opt/hexvault and replace files with cracked files from this zip
3. Run:
   sudo chown hexvault:hexvault hexvault.crt hexvault.key teamssrv.hexlic
4. Run:
   sudo chmod 640 hexvault.crt hexvault.key teamssrv.hexlic
3. Run (only once to setup database):
   sudo -u hexvault ./vault_server -f hexvault.conf -d ./files --recreate-schema
4. Run (to start vault server):
   sudo -u hexvault ./vault_server -f hexvault.conf -d ./files -c hexvault.crt -k hexvault.key
5. Replace hvui.exe and hv.exe in IDA dir with cracked ones from ida_crack folder and use them to connect to teams server
