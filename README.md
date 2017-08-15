# IBM Information Governance Catalog Trial Edition
IBM IGC Trial provides a window to the data in your enterprise so you easily create, share and manage all your information assets. Today, organizations are challenged with aligning IT with their business goals. With IBM Information Governance Catalog you can:
<li>Establish a common business vocabulary on the front end
<li>Manage data lineage on the back end
<li>Build and maintain a strong data governance and stewardship program
<li>Leverage this trusted information in various big data projects

You can install the Trial on your Mac or Windows Laptop in less than 15 minutes and start with a guided tutorial which will walk you through the actual product while performing a Data Steward use case. You can visit our [IGC forum](https://developer.ibm.com/answers/topics/igc/) for asking product related questions. You can also refer to our FAQ section here and open an issue for unanswered question.

### FAQ


<li> I already have docker installed on my laptop, will you use the existing install of docker or replace it?

We will only install Docker if you do not have it installed, or you have an older Docker toolbox installed on your Mac. On a Windows laptop, we do not install Docker at all. 

<li> Which versions of Windows operating system are supported for IGC Trial?

Windows 10 
Windows 7

<li> On a Mac, I see the warning message during launch:
"IBM IGC Trial can't be opened because it is from an un-identified developer"

You would need to go to your Mac -> System Preferences -> Security & Privacy -> Open Anyway under Allow Apps downloaded From section. You can also refer to Mac help on this topic [here](https://support.apple.com/kb/PH25088?locale=en_US)

<li> On Windows, I see the warning during launch:

You need to click on more-info then Run Anyway to launch the app

<li> The app was successfully installed on my laptop, but IGC console or guided tutorial is not launching.

IGC Trial app requires Docker's resources to be increased to 4GB. In addition, if your laptop has only 8GB of RAM, you should check Mac's activity monitor and close some of the opened programs to free up some resources.

<li> My app installation seems to be hung with installation for more than 20 mins.

The app installation takes no more than 15 mins on a standard network download speed of 15 - 20 MBPS. A typical corporate VPN will likely limit the download speed so user must consider this while waiting to finish the install. If you loose an  internet connection during the install, restart the install application when your connection is restored. In some cases, rebooting your laptop and restarting the application will complete the installaltion successfully.

<li> For windows 7 users:
You must enable Virtualization Technology (VT-X) on your BIOS.
During the Docker Toolbox installation, accept the default components to install VirtualBox too.
In the beginning of the installation, Please make sure to provide root password when prompted.

<li> I want to uninstall the IGC.

If you are using the IGC Trial app version 1.2.3, you will find a button to 'uninstall' in the drop-down menu. 

If you are using the IGC Trial app version 1.2.2, Please follow the procedure.
Use the script posted in the repository. Scripts are different for different operating systems. `clearIGC_Mac.sh` and `clearIGC_Win.bat` for mac and windows respectively. Download the scripts and from your terminal go to the directory where you have downloaded the script. Just run `./<script-name.ext>` it will remove the IGC container as well as the IGC docker image from your machine. 
