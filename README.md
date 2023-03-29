[![Download boundman](https://img.shields.io/sourceforge/dt/boundman.svg)](https://sourceforge.net/projects/boundman/files/latest/download) Python 3.11 | for windows users | Beta 

```
██████╗  ██████╗ ██╗   ██╗███╗   ██╗██████╗ ███╗   ███╗ █████╗ ███╗   ██╗
██╔══██╗██╔═══██╗██║   ██║████╗  ██║██╔══██╗████╗ ████║██╔══██╗████╗  ██║
██████╔╝██║   ██║██║   ██║██╔██╗ ██║██║  ██║██╔████╔██║███████║██╔██╗ ██║
██╔══██╗██║   ██║██║   ██║██║╚██╗██║██║  ██║██║╚██╔╝██║██╔══██║██║╚██╗██║
██████╔╝╚██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║ ╚═╝ ██║██║  ██║██║ ╚████║
╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝                                                                                         
```

# Description

Boundman is an advanced, user-friendly, and sleek application designed to take control over your network connections. It allows you to efficiently manage and block incoming and outgoing traffic for specific .exe files contained within a chosen folder and its subfolders. 

With its intuitive PyQt5 graphical interface and robust PowerShell scripts, Boundman provides seamless integration with the Windows Firewall for a powerful network management experience.

In release section you can download an executable ready to launch (portable) made for windows with pyinstaller.

It's a non-signed software because I prefer to save my money for real stuff, so it will be detected as a malware from bad anti-virus, you can still test on sandbox here  : https://www.virustotal.com/gui/home/upload 

Or compile it by yourself , I made a tutorial downside of this page.

![2023-03-30 010848](https://user-images.githubusercontent.com/92639080/228687958-f00a6520-9b23-47e3-8974-b22058b91ee2.png)

- `Security control` : By blocking incoming and outgoing traffic of specific .exe files, users can prevent potentially malicious applications from accessing the internet or receiving data. This can help strengthen the security of their system.

- `Network resource management` : Users can limit bandwidth usage by blocking traffic for certain non-essential applications. This can be particularly useful in environments where network resources are limited, such as in enterprise networks or low-speed internet connections.

- `Privacy protection` : Boundman can help protect users' privacy by preventing certain applications from sharing sensitive information with remote servers. Users can block outgoing traffic for applications they suspect of collecting personal data without their consent.

- `Troubleshooting` : Users can identify and resolve network-related issues by selectively blocking traffic for certain applications. This can facilitate isolating problems and finding solutions to improve network performance.

- `Update control` : Boundman allows users to control automatic application updates by blocking their access to the internet. This way, users can choose when and how to update their software.

In summary, Boundman offers users precise and customizable control over their application network traffic, which can be valuable for security, resource management, privacy protection, and troubleshooting.

[![Download boundman](https://a.fsdn.com/con/app/sf-download-button)](https://sourceforge.net/projects/boundman/files/latest/download)

## 🎯 Features

- **Intuitive and modern PyQt5 graphical interface** for effortless navigation
- **Granular control** over incoming and outgoing traffic for .exe files
- **Flexible folder and subfolder selection** to target specific applications
- **Automated Windows Firewall rule management** for seamless integration
- **Comprehensive logging** to keep track of changes and actions

## 🔧 How to use

1. Run the Boundman application by executing the "boundman.py" file. It will require administrator privileges.
2. Use the **Browse** button to select a folder containing .exe files for which you want to block incoming and/or outgoing traffic.
3. Check the **Inside** checkbox to block incoming traffic, and/or the **Outside** checkbox to block outgoing traffic.
4. Click the **Launch** button to create the necessary Windows Firewall rules.
5. Logs will be generated for each action and can be found in the "logs" folder.

## 📚 Dependencies

- Python 3.7 or later
- PyQt5
- PowerShell (included with Windows)

---

Feel free to adapt this presentation to your needs and add any additional information or screenshots as necessary.


## :scroll: License

This repository is released under the [MIT License](LICENSE). Please see the `LICENSE` file for more information.

## :question: Support & Questions

If you have any questions or need support, please feel free to open an issue or join my twitter.




```
___ _  _ ___ ____ ____ _ ____ _    
 |  |  |  |  |  | |__/ | |__| |    
 |  |__|  |  |__| |  \ | |  | |___ 
                                   
```

Here a tutorial explaning different ways to run the files :


# For **MAC** & **Linux** users :

Since this script is designed for Windows users, you should probably first improve the code.

However here is the procedure to run the script:

* [ MAC ] ; https://macosx-faq.com/how-to-run-python-script/
* [ LINUX ] ; open a terminal then cd until the script and type

```
python script.pyw
```
(where `script.pyw` is obviously the name of what you've downloaded)


# For microsoft users;

Because this script is made by pyinstaller it could be detected as a malware.

Here are possibilities to run the script; 

## 1. Run by simple click on APPLICATION.exe

The .exe file is a portable version made for microsoft users with pyinstaller, you can download only this file and nothing else.


## 2. Run with Python

`Python script` is directory with the original script for python 3.11. 

In case you have a lower version you may have to download module imported not included with your version. 
Just read the first lines of the script in Alexandria with a notepad or whatever to find what's missing.

If you would like to run with python **YOU WILL NEED THE IMAGE .png PLACED IN THE SAME DIRECTORY OF THE RUNNING SCRIPT**.

Also you can add a w to the extension (like `script.pyw`). It means `windowed mode`, to launch the python script without the CMD but it's still a common python file.


## 3. Compile the script by yourself 

### Instructions 

To create your own executable from the python file, you will need to install pyinstaller and python. 

Here are the steps you should follow:

* Download python 3.11.1

Don't forget to add it to your path with the installer or in variables environment ( so reboot your PC after the installation ), here is the link : https://www.python.org/ftp/python/3.11.1/python-3.11.1-amd64.exe

* Open your CMD as an administrator and type the following command:

```
python -m pip install pyinstaller
```

* You can now run it using a ruby `.spec` file by entering the following command in the project directory : 
```
pyinstaller YOUR_FILE.spec

```
Normally, I place a blank.spec file in the "script" folder, if there isn't one let's watch over here:

https://github.com/SECRET-GUEST/trieur/blob/main/Script/AKOUN_trieur_v1.0.0.spec

*You can also run it directly with your os, type the following command, replacing the file paths with your own :

```
pyinstaller --onefile --icon="...YOUR PATH.../YOUR ICON.ico" --add-data "...YOUR PATH.../ico;ico" --noconsole test.py

```

Here are the explanations of the different options:

- `--onefile` :creates a single executable that includes all dependencies.

- `--icon=icon.ico` :specifies the icon to use for the executable (replace icon.ico with the path to your icon file).

- `--add-data "path/to/file;folder_name"` :

adds external files required by the program. The path to the file and the name of the folder in which the file will be extracted should be separated by a semicolon `;`. You can add multiple files by separating them with semicolons.

- ` script.py`: specifies the name of your Python script.

- ` --noconsole` : hides the console when the executable is run.


Make sure to replace the snipped parts with the names of your files and folders. Also note that the path should be specified based on the operating system you are working on.

After running this command, you should have a single executable that includes all dependencies, external files, and a custom icon, and does not show the console when running.

Alternatively you can also :

## 4. Create a batch file to run 

- [ ] Create a text file

- [ ] In the text file type and write (and change/ complete the path, first is for python, 2nd is for script.py);

```
C:\YOUR PATH TO PYTHON \python.exe" "C:\ **YOUR PATH TO THE SCRIPT** \script.pyw"
```

If Python is in path, you can just ; 

```
python "C:\ **YOUR PATH TO THE SCRIPT** \script.pyw"
```

- [ ] Rename the `new_file.txt` by `script.bat` then just click on and it will run the progra

```
     _ ._  _ , _ ._            _ ._  _ , _ ._    _ ._  _ , _ ._      _ ._  _ , _ .__  _ , _ ._   ._  _ , _ ._   _ , _ ._   .---.  _ ._   _ , _ .__  _ , _ ._   ._  _ , _ ._      _ ._  _ , _ .__  _ , _ . .---<__. \ _
   (_ ' ( `  )_  .__)        (_ ' ( `  )_  .__ (_ ' ( `  )_  .__)  (_ '    ___   ._( `  )_  .__)  ( `  )_  .__)   )_  .__)/     \(_ ' (    )_  ._( `  )_  .__)  ( `  )_  .__)  (_ ' ( `  )_  ._( `` )_  . `---._  \ \ \
 ( (  (    )   `)  ) _)    ( (  (    )   `)  ) (  (    )   `)  ) _ (  (   (o o) )     )   `)  ) _    )   `)  ) _    `)  ) \.@-@./(  (    )   `)     )   `)  ) _    )   `)  ) _ (  (    )   `)         `) ` ),----`- `.))  
(__ (_   (_ . _) _) ,__)  (__ (_   (_ . _) _) _ (_   (_ . _) _) ,__ (_   (  V  ) _) (_ . _) _) ,_  (_ . _) _) ,_ . _) _) ,/`\_/`\ (_   (  . _) _) (_ . _) _) ,_  (_ . _) _) ,__ (_   (_ . _) _) (__. _) _)/ ,--.   )  |
    `~~`\ ' . /`~~`           `~~`\ ' . /`~~`   `~~`\ ' . /`~~`     `~~`/--m-m- ~~`\ ' . /`~~`   `\ ' . /`~~`  `\ ' . /  //  _  \\ ``\ '  . /`~~`\ ' . /`~~`   `\ ' . /`~~`     `~~`\ ' . /`~~`\ ' . /`~~/_/    >     |
         ;   ;                     ;   ;             ;   ;               ;   ;      ;   ;          ;   ;         ;   ;  | \     )|_   ;    ;      ;   ;          ;   ;               ;   ;      ;   ;    |,\__-'      |
         /   \                     /   \             /   \               /   \      /   \          /   \         /   \ /`\_`>  <_/ \  /    \      /   \          /   \               /   \      /   \     \__         \
________/_ __ \___________________/_ __ \___________/_ __ \______ __ ___/_ __ \____/_ __ \________/_ __ \_______/_ __ \\__/'---'\__/_/_  __ \____/_ __ \________/_ __ \_____ _______/_ __ \____/_ __ \____ __\___      )
```
