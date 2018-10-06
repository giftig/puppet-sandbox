FROM centos:latest

RUN rpm -Uvh 'https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm' && \
    yum install -y vim puppet-agent && \
    yum clean all && \
    echo 'export PATH="$PATH:/opt/puppetlabs/bin"' >> $HOME/.bashrc
