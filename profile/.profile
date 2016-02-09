# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# SAF scripts
PATH="$HOME/src/DevBinUtils:$PATH"
PATH="$HOME/lib/SAFBuild:$PATH"

export ORACLE_HOME=/usr/lib/oracle/11.2/client64
export LD_LIBRARY_PATH=/usr/lib/oracle/11.2/client64/lib
export PERL5LIB=$HOME/lib/perl

#For ant deploys
export ANT_BUILD_HOME=$HOME/.antBuild
export ANT_HOME=$HOME/apps/ant/ant-current
export MAVEN_HOME=$HOME/apps/maven/maven-current
export DEPLOY_TEMP=/tmp
export FTD_DIR=${HOME}/src/Python/InputFiles
export PATH=$PATH:${HOME}/apps/play/play-2.2.1/
export PATH=$PATH:${HOME}/.npm/bin
export ORACLE_HOME=/usr/lib/oracle/11.2/client64
export LD_LIBRARY_PATH=/usr/lib/oracle/11.2/client64/lib
export DYLD_LIBRAY_PATH=/usr/lib/oracle/11.2/client64/lib
export PYTHONPATH=$PYTHONPATH:$HOME/lib/python


PATH="$ANT_HOME/bin:$PATH"

export CVSROOT=:pserver:dohagan@src.safmt.org:/opt/CVS/WWW
