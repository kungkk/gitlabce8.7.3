FROM    centos:7
MAINTAINER "kkk" <kkk@jccsoftware.com>
RUN	yum check-update; \
	yum -y update; \
	yum -y install curl policycoreutils openssh-server openssh-clients; \
	yum clean all

#CMD	systemctl enable sshd
#CMD	systemctl start sshd
RUN	yum -y install postfix
#CMD	systemctl enable postfix
#CMD	systemctl start postfix
#CMD	firewall-cmd --permanent --add-service=http
#CMD	systemctl reload firewalld

#CMD	curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | bash
#RUN	yum -y install gitlab-ce

#curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
#sudo yum install gitlab-ce
#sudo gitlab-ctl reconfigure


#EXPOSE 22
#EXPOSE 1521
EXPOSE 80

# https://about.gitlab.com/downloads/#centos7
