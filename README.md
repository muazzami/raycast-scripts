# raycast-scripts
Collection of various Raycast Scripts

This README provides instructions for installing and using custom scripts with [Raycast](https://www.raycast.com/), a productivity tool for macOS that lets you run scripts directly from its command bar.

## 1. Copying Scripts to Raycast

To add your custom scripts to Raycast:

1. **Locate the Script**  
   Ensure you have your script file (e.g., `myscript.sh`) ready on your computer.

2. **Open Raycast Preferences**  
   - Launch Raycast.
   - Open the Raycast preferences (use `Cmd + ,` or click the Raycast icon in the menu bar and choose "Preferences").

3. **Navigate to Extensions > Script Commands**  
   - In the sidebar, select **Extensions**.
   - Click on **Script Commands**.

4. **Reveal Script Commands Folder**  
   - Click the "Open Scripts Folder" button. This will open the folder where Raycast looks for script commands.

5. **Copy Your Script**  
   - Drag and drop or copy your script file into this folder.

## 2. Setting Script Permissions

For Raycast to execute your script, it must have the correct permissions:

- Open Terminal.
- Navigate to the folder containing your script (e.g., `cd ~/Raycast/Script-Commands`).
- Run the following command to make your script executable:

  ```bash
  chmod +x myscript.sh
  ```

  Replace `myscript.sh` with the actual name of your script file.


Refer to the [Raycast documentation](https://developers.raycast.com/) for more details on available metadata options.

## 4. Using Your Script in Raycast

- Open Raycast (`Cmd + Space` by default).
- Type the name of your script (as specified in the metadata or filename).
- Press `Enter` to run it.

## Troubleshooting

- **Script not showing up?**  
  - Make sure the script is in the correct folder.
  - Ensure the script is executable (`chmod +x`).
  - Check that the script has a proper shebang line (e.g., `#!/bin/bash` or `#!/usr/bin/env python3`).

Enjoy your custom Raycast scripts!
