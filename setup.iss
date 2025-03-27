[Setup]
AppName=Nailong Toolkit
AppVersion=1.14.514
DefaultDirName={pf}\NailongToolkit
DefaultGroupName=CreateProjectFolder
OutputDir=.\Installer
OutputBaseFilename=NailongInstaller
Compression=lzma
SolidCompression=yes

[Files]
; 将所有文件复制到安装目录
Source: "CreateProjectFolder.hta"; DestDir: "{app}"; Flags: ignoreversion
Source: "RunHTA.vbs"; DestDir: "{app}"; Flags: ignoreversion
Source: "nailong.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "nailong.jpg"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; 创建开始菜单和桌面快捷方式
; Name: "{group}\CreateProjectFolder"; Filename: "{app}\CreateProjectFolder.hta"
; Name: "{commondesktop}\CreateProjectFolder"; Filename: "{app}\CreateProjectFolder.hta"

[Registry]
; 添加到所有文件的右键菜单
Root: HKCR; Subkey: "Directory\Background\shell\SetUpProjectFolder"; ValueType: string; ValueName: ""; ValueData: "新建项目文件夹(奶龙版)"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Directory\Background\shell\SetUpProjectFolder"; ValueType: string; ValueName: "Icon"; ValueData: """{app}\nailong.ico"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "Directory\Background\shell\SetUpProjectFolder\command"; ValueType: string; ValueName: ""; ValueData: "wscript.exe ""{app}\RunHTA.vbs"""; Flags: uninsdeletekey

[UninstallDelete]
; 卸载时删除安装目录
Type: filesandordirs; Name: "{app}"