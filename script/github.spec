# -*- mode: python ; coding: utf-8 -*-

block_cipher = None


chemin_base = "YOUR_PATH_HERE" #Name of the repository

a = Analysis(['boundman.py'],
             pathex=[chemin_base],
             binaries=[],
             datas=[
                 (f"YOUR_PATH_HERE\\ico\\boundman.png", "ico"), #Files to  add followin by the name of the folder
                 (f"YOUR_PATH_HERE\\ico\\boundman.ico", "ico")
             ],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)

exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          name='boundman',
          debug=False,
          strip=False,
          upx=True,
          console=False,
          icon=f"YOUR_PATH_HERE\\ico\\boundman.ico", #The icon
          onefile=True, #In one file
          uac_admin=True #Launch in admin mode to avoid possible errors
        )

