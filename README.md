# Dart SDK Installer Maker

This will create the Dart SDK installer for Windows.  
You can install the Dart SDK to OFFLINE environment.

## Requirement

- Windows (32bit or 64bit)
- WiX TOOLSET
- Dart SDK as zip files (32bit and 64bit)

## Installation

First, please install [WiX TOOLSET](http://wixtoolset.org/). WiX TOOLSET is an OSS made by Microsoft.

Next, clone this repository.

```cmd
> cd <your-folder>
> git clone https://github.com/takutaro/DartSdkInstallerMaker.git
> cd DartSdkInstallerMaker
```

Finally, download `dartsdk-windows-ia32-release.zip` and `dartsdk-windows-x64-release.zip` from
https://www.dartlang.org/tools/sdk/archive .  
Please put the downloaded zip files in this (DartSdkInstallerMaker) folder.

## Usage

```cmd
> cd <your-folder>\DartSdkInstallerMaker
> make_msi.bat 2.2.0
```

In the above case, `dartsdk32-2.2.0.msi` and `dartsdk64-2.2.0.msi` will be created.  
The msi file is a distributable installer.

## Anything Else

This software contains 7-Zip binary (https://www.7-zip.org/) to extract the zip.

## Author

[@takutaro09](https://twitter.com/takutaro09)
