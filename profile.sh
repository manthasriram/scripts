echo "Welcome Sriram"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH=$PATH:/Users/srmantha/dev/apache-maven-3.1.1/bin:/Users/srmantha/tools/passwordless-1.4-20140506.174659-1-bin/

M2_HOME=/Users/srmantha/dev/apache-maven-3.1.1

export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128M"
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

JBOSS_HOME=$IDE_HOME/jboss-as-7.1.3.Final

export M2_HOME
export PATH=$PATH:/usr/local/bin/docker

export PATH=$PATH:/Users/srmantha/Paypal/source/ci-pipeline-scripts

alias source='cd /Users/srmantha/Paypal/source'
alias rmysql='sudo /usr/local/mysql/support-files/mysql.server restart'
alias mystage='ssh stage2c6420.qa.paypal.com'
