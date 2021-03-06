$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://dl.eviware.com/soapuios/5.5.0/SoapUI-x32-5.5.0.exe'
$url64      = 'https://s3.amazonaws.com/downloads.eviware/soapuios/5.6.0/SoapUI-x64-5.6.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'soapui*'

  checksum      = '6f32e0f5415e759afcd88bbd19786d16263a36584d38373a54650298e53f84a0'
  checksumType  = 'sha256'
  checksum64    = 'ea0ecf663e68adbe346746fd2d8662bb713e124e8aa3b6cf769235c3f14e5210'
  checksumType64= 'sha256'

  silentArgs    = "-q"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
