FROM centos:7
RUN rpm --import https://getfedora.org/static/0608B895.txt file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 \
    && yum --disableplugin=fastestmirror -y install epel-release \
    && yum --disableplugin=fastestmirror -y --enablerepo=epel-testing install ansible initscripts sudo cronie \
    && yum -y update \
    && yum clean all
RUN sed -i 's/Defaults    requiretty/Defaults    !requiretty/g' /etc/sudoers
