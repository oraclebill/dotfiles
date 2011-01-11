alias ll='ls -l'
alias ls='ls -F'
alias ipython="python -c 'import IPython; IPython.Shell.IPShell().mainloop()'"
alias eclipse4='/Users/bjones/Development/Applications/eclipse/SDKS/eclipse-SDK-4.1M3-macosx-cocoa-x86_64/eclipse/eclipse'
alias eclipse37='/Users/bjones/Development/Applications/eclipse/SDKS/eclipse-SDK-3.7M3-macosx-cocoa-x86_64/eclipse/eclipse'



# add local bin dirs
export PATH=~/bin:~/bin/depot_tools:/usr/local/git/bin:$PATH
#export PATH=/usr/local/pgsql/bin:/usr/local/pgsql/bin:$PATH


# for python development, use 2.6.4 
export PATH=/opt/local/bin:$PATH

# setup postgresql
export PATH=/opt/local/lib/postgresql84/bin:$PATH
export PGDATA=/var/db/postgresql

# mysql5 (port)
export PATH=/opt/local/lib/mysql5/bin:$PATH

#
# setup virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper_bashrc

#
# make pip play nice with virtualenv
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_REQUIRE_VIRTUALENV=true
export PIP_RESPECT_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=~/.pipcache

#
# Some django sugar
export DJANGO_COLORS="light"

# django autocomplete
_django_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   DJANGO_AUTO_COMPLETE=1 $1 ) )
}
complete -F _django_completion -o default django-admin.py manage.py



#
# AWS Stuff
export EC2_HOME=~/lib/ec2
export AWS_RDS_HOME=~/lib/RDSCli-1.0.005
export EC2_PRIVATE_KEY=~/.ec2/pk-JV4444C7MXRZW5GLCDJLQBK22BNYHGQD.pem
export EC2_CERT=~/.ec2/cert-JV4444C7MXRZW5GLCDJLQBK22BNYHGQD.pem

export PATH=$PATH:$EC2_HOME/bin:$AWS_RDS_HOME/bin


##
# Your previous /Users/bjones/.bash_profile file was backed up as /Users/bjones/.bash_profile.macports-saved_2009-11-22_at_12:40:09
##

# MacPorts Installer addition on 2009-11-22_at_12:40:09: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Java stuff
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/"
export PATH=$PATH:/Users/bjones/Development/Applications/eclipse/buckminster/director
export PATH=$PATH:/Users/bjones/Development/Applications/eclipse/buckminster/headless
export PATH=$PATH:/Users/bjones/Development/Applications/eclipse/currentSDK

