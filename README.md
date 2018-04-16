# DebugReport
You can generate more helpful debug log from Spec Debugger.


## Supported Smalltalk Version

Pharo Smalltalk 5.0, 6.1

## Installation

```smalltalk
Metacello new
    baseline: 'DebugReport';
    repository: 'github://kaminami/DebugReport/repository';
    load.
```

Local Reporsitory

```smalltalk
| pathToPackageDirectory |
"edit to match the path to your chosen package directory"
pathToPackageDirectory := './repository/' asFileReference asAbsolute fullName.
Metacello new
  baseline: 'Kobati';
  repository: 'filetree://', pathToPackageDirectory;
  load.
```

## Sample
http://squeak.sakura.ne.jp/etc/DebugReport-Pharo-Sample/
