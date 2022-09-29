# DebugReport
You can generate more helpful debug log from Spec Debugger.


## Supported Smalltalk Version

Pharo Smalltalk 5, 6, 7, 8, 9, 10

## Installation

```smalltalk
"Pharo 10.x"
Metacello new
    baseline: 'DebugReport';
    repository: 'github://kaminami/DebugReport:v6.0/repository';
    load.
    
"Pharo 9.x"
Metacello new
    baseline: 'DebugReport';
    repository: 'github://kaminami/DebugReport:v5.0/repository';
    load.

"Pharo 8.x"
Metacello new
    baseline: 'DebugReport';
    repository: 'github://kaminami/DebugReport:v4.0/repository';
    load.

"Pharo 7.x"
Metacello new
    baseline: 'DebugReport';
    repository: 'github://kaminami/DebugReport:v3.1/repository';
    load.


"Pharo 5.x, 6.x"
Metacello new
    baseline: 'DebugReport';
    repository: 'github://kaminami/DebugReport:v2.4/repository';
    load.
```

Local Reporsitory

```smalltalk
| pathToPackageDirectory |
"edit to match the path to your chosen package directory"
pathToPackageDirectory := './repository/' asFileReference asAbsolute fullName.
Metacello new
  baseline: 'DebugReport';
  repository: 'filetree://', pathToPackageDirectory;
  load.
```

## Output Example
See: example/DebugReport-20200501152913.zip


## Settings
```smalltalk
DRSettings autoOutputMode: false. "default"
DRSettings autoOutputMode: true.

DRSettings useZipOutputter. "default"
DRSettings useFileOutputter.

DRSettings outputDirectoryPath: '.'. "default"
DRSettings outputDirectoryPath: './report'.
DRSettings outputDirectoryPath: '/Users/kaminami/temp/report'.

DRSettings outputLimit: 0. "default unlimited"
DRSettings outputLimit: 10.
```

## Etc
```smalltalk
"output current context"
thisContext outputDebugReport.

"output handled context"
[ 1 zork ] on: Exception do: [:ex | ex outputDebugReport ]
```
