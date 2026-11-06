#define AppName "ConectaTudo 1.4"
#define AppVersion "1.4"
#define AppExe "ConectaTudo-Windows-1.4.exe"
[Setup]
AppId={{E072B4B7-90C3-4163-BE48-9FF6CFE10C94}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher=Projeto ConectaTudo
DefaultDirName={localappdata}\Programs\ConectaTudo-1.4
DefaultGroupName=ConectaTudo 1.4
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
OutputDir=..\dist
OutputBaseFilename=ConectaTudo-Setup-1.4
Compression=lzma
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\{#AppExe}
[Files]
Source: "..\dist\{#AppExe}"; DestDir: "{app}"; Flags: ignoreversion
[Icons]
Name: "{autoprograms}\ConectaTudo 1.4"; Filename: "{app}\{#AppExe}"
Name: "{autodesktop}\ConectaTudo 1.4"; Filename: "{app}\{#AppExe}"; Tasks: desktopicon
[Tasks]
Name: desktopicon; Description: "Criar atalho na área de trabalho"; Flags: unchecked
[Run]
Filename: "{app}\{#AppExe}"; Description: "Abrir ConectaTudo"; Flags: nowait postinstall skipifsilent
