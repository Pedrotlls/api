#!/bin/bash

#=============== Atenção ===============
#  Esse script ainda não está completo
#=======================================

localsoftwares="C:\Users\6357510\Documents\Alessandro\sit-usp"

cd "$localsoftwares"

ECLIPSE_PATH=`ls -d * | grep -i "^STS*" | head -n 1`

eclipseexe="${ECLIPSE_PATH}/SpringToolSuite4.exe"

echo $ECLIPSE_PATH

# Path to your Eclipse executable
#ECLIPSE_PATH="/path/to/eclipse/eclipse"

# Path to the workspace you want to use
#WORKSPACE_DIR="/path/to/your/workspace"
WORKSPACE_DIR="."

# Path to the project folder you want to import
PROJECT_DIR="./api2"

# Import the project into the workspace
$eclipseexe -nosplash -data "$WORKSPACE_DIR" \
-application org.eclipse.cdt.managedbuilder.core.headlessbuild \
-import "$PROJECT_DIR"
