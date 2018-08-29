FROM jc21/rpmbuild-centos7

RUN sudo rpm -ivh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-2.noarch.rpm \
	&& sudo yum -y install centos-release-scl \
	&& sudo yum -y install devtoolset-4

ADD files/enabledevtoolset4.sh /etc/profile.d/enabledevtoolset4.sh
ADD bin/build_boost.sh /bin/
