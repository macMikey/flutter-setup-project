# flutter-setup-project.sh

shell script for setting up all the directories for a flutter project, and creating some of the secondary files.



## How To Use

1. clone the repo
2. `cd` \<repo folder\>
3. `chmod +x flutter-setup-project.sh`
4. `flutter-setup-project.sh` \<project_name\> **NOTE:** Flutter will complain if the name is not all lowercase, with underscores for separators.



## Example

`flutter-setup-project.sh test_project`



## Resulting Structure:

There are directories below these, and a number of files, as well, that are omitted from this tree.

```bash
test_project
├── README.md
├── analysis_options.yaml
├── android
├── assets
│   ├── data
│   ├── fonts
│   ├── icons
│   └── images
├── ios
├── lib
│   ├── main.dart
│   └── src
│       ├── config
│       ├── constants
│       ├── models
│       ├── providers
│       ├── screens
│       ├── services
│       ├── utils
│       └── widgets
├── linux
├── macos
├── pubspec.lock
├── pubspec.yaml
├── test
├── test_project.iml
├── web
└── windows
```

