export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/david/eclipse/jee-latest-released/eclipse"

#Functions for environment switching
setJavaHome() {
    if [ "$1" = "6" ]; then
	export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
    fi
    if [ "$1" = "7" ]; then
	export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
    fi
    if [ "$1" = "8" ]; then
	export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
    fi
}

setJavaHome 6
export PATH=$JAVA_HOME/bin:$PATH

setJavaHome 8
export PATH=$JAVA_HOME/bin:$PATH

setJavaHome 7
export PATH=$JAVA_HOME/bin:$PATH

setJbossHome() {
    if [ "$1" = "4" ]; then
	export JBOSS_HOME=$HOME/apps/jboss/jboss-4.2.3.GA
	export DEPLOY_HOME=$HOME/apps/jboss/jboss-4.2.3.GA/server/safCluster/deploy
    fi
    if [ "$1" = "7" ]; then
	export JBOSS_HOME=$HOME/apps/jboss/jboss-as-7.1.1.Final
	export DEPLOY_HOME=${JBOSS_HOME}/standalone/deployments
    fi
}

setJbossHome 7
