[Setup]
AppName=����������� Median XL Ultimative (MPQ-������)
AppVersion=XVc
VersionInfoVersion=1.0.0.0
DefaultDirName={reg:HKCU\Software\Blizzard Entertainment\Diablo II,InstallPath|{pf}\Diablo II}
DefaultGroupName=����������� Median XL Ultimative (MPQ-������)      
Compression=none
SolidCompression=yes
OutputDir=D:\MXLU_Russifier
OutputBaseFilename=mxlu_russifier_mpq

[Types]
Name: "full"; Description: "������"
Name: "custom"; Description: "����������"; Flags: iscustom

[Components]
Name: "program"; Description: "����� �����������"; Types: full custom; Flags: fixed
Name: "plugy"; Description: "PlugY.dll (������ ��� 10� ������ PlugY)"; Types: full      

[Files]
Source: "D2Win.dll"; DestDir: "{app}"; Components: program
Source: "patch_d2.mpq"; DestDir: "{app}"; Components: program; Flags: external
Source: "MpqLangChanger.exe"; DestDir: "{app}"; Components: program
Source: "PlugY.dll"; DestDir: "{app}"; Components: plugy

[Languages]
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"

[Run]
Filename: "{reg:HKCU\Software\Blizzard Entertainment\Diablo II,InstallPath|{pf}\Diablo II}\MpqLangChanger.exe"; Parameters: "-l=RUS patch_d2.mpq"; Description: "����������� �� ������� ������"; Flags: postinstall
Filename: "{reg:HKCU\Software\Blizzard Entertainment\Diablo II,InstallPath|{pf}\Diablo II}\MpqLangChanger.exe"; Parameters: "-l=ENG patch_d2.mpq"; Description: "����������� �� ���������� ������"; Flags: postinstall unchecked
Filename: "{reg:HKCU\Software\Blizzard Entertainment\Diablo II,InstallPath|{pf}\Diablo II}\Game.exe"; Description: "��������� ����"; Flags: postinstall