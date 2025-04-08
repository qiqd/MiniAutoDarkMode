; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MiniAutoDarkMode"
#define MyAppVersion "1.2.0.2"
#define MyAppPublisher "https://gitee.com/qijiugit/auto-dark-mode"
#define MyAppURL "https://gitee.com/qijiugit/auto-dark-mode"
#define MyAppExeName "MiniAutoDarkMode.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{57EFEDD5-23CA-459A-A841-3FE166F60AA6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=D:\Quick access\Desktop\code\.net\MiniAutoDarkMode\LICENSE.txt
; Uncomment the following line to run in non administrative install mode (install for current user only).
;PrivilegesRequired=lowest
OutputDir=D:\Quick access\Desktop
OutputBaseFilename=MiniAutoDarkMode v1.2.0.2
SetupIconFile=D:\Quick access\Desktop\code\.net\MiniAutoDarkMode\Resources\logo.ico
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "chinesesimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\Quick access\Desktop\code\.net\MiniAutoDarkMode\bin\Release\net8.0-windows\publish\win-x86\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Quick access\Desktop\code\.net\MiniAutoDarkMode\bin\Release\net8.0-windows\publish\win-x86\Microsoft.Extensions.Logging.Abstractions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Quick access\Desktop\code\.net\MiniAutoDarkMode\bin\Release\net8.0-windows\publish\win-x86\MiniAutoDarkMode.deps.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Quick access\Desktop\code\.net\MiniAutoDarkMode\bin\Release\net8.0-windows\publish\win-x86\MiniAutoDarkMode.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Quick access\Desktop\code\.net\MiniAutoDarkMode\bin\Release\net8.0-windows\publish\win-x86\MiniAutoDarkMode.dll.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Quick access\Desktop\code\.net\MiniAutoDarkMode\bin\Release\net8.0-windows\publish\win-x86\MiniAutoDarkMode.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Quick access\Desktop\code\.net\MiniAutoDarkMode\bin\Release\net8.0-windows\publish\win-x86\MiniAutoDarkMode.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Quick access\Desktop\code\.net\MiniAutoDarkMode\bin\Release\net8.0-windows\publish\win-x86\Quartz.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

