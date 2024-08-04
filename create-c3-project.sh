#!/bin/sh

projectName=${PWD##*/}
c3c init $projectName
cd $projectName/
mkdir target/

echo "#/bin/bash
c3c compile src/main.c3 -o target/main" > build.sh
chmod +x build.sh

echo "#/bin/bash
./target/main" > run.sh
chmod +x run.sh

echo "### Build

```
c3c compile src/main.c3 -o target/main
```

### Run

```
./target/main
```" > README.md