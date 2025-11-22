# Chrome Remote Desktop Removal Script

This package contains a script to completely stop and remove **Chrome Remote Desktop** from your system.

## Files
- `remove_crd.sh` → The main script.
- `README.md` → This file with usage instructions.


1. Make the script executable:
   ```bash
   nano remove_crd.sh
   ```


2. Make the script executable
   ```bash
   chmod +x remove_crd.sh
   ```


3. Run the script:
   ```bash
   ./remove_crd.sh
   ```

## What the Script Does
- Checks running services  
- Stops Chrome Remote Desktop daemon  
- Removes old config files  
- Removes user from `chrome-remote-desktop` group  
- Uninstalls Chrome Remote Desktop package  
- Runs `apt autoremove` to clean leftovers  

---
✅ After running this script, Chrome Remote Desktop will be fully removed.
