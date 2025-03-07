Step 1: Ensure TrueNAS SMB Share is Set Up
	On TrueNAS:

	1. Go to the TrueNAS Web UI (http://172.16.127.120 in your case).

	2. Create or Check Your SMB Share:
		- Navigate to Sharing > Windows (SMB) Shares.
		- Ensure a share is set up for shared_folder.
		- Click Edit and verify:
			- "Enabled" is checked.
			- "Allow Guest Access" is enabled if you want anonymous access.
			- Set correct permissions for truenas_admin.
			- Check Permissions:

	3. Navigate to Storage > Pools.
	- Find your dataset for shared_folder.
	- Click Edit Permissions and ensure truenas_admin has read & write access.
	- Enable SMB Service:

	4. Go to Services > SMB.
	- Ensure it is Running and Set to Start on Boot.
	
Step 2: Map the Network Drive on Windows
	- Run this in Command Prompt (CMD) as Administrator on Windows:	
	- net use Z: \\172.16.127.120\shared_folder /user:truenas_admin "@dece@" /persistent:yes

Step 3: Verify Access
	- Open File Explorer (Win + E) and go to This PC.
	- You should see Z: as the mapped drive.
	- Try to create, edit, and delete files inside Z:\shared_folder to confirm permissions.

Step 4: 
	- Go to files of the django dee-ans/cdsfile/settings.py
	- In the network drive change the shared_folder to the actual folder naem in truenas
	
	NETWORK_DRIVE = {
		"drive_letter": "Z:",
		"network_path": "\\\\172.16.127.120\\shared_folder",
		"username": os.getenv("NETWORK_USERNAME", "truenas_admin"),
		"password": os.getenv("NETWORK_PASSWORD", "@dece@"),
		"persistent": True,
	}

	

	
	
