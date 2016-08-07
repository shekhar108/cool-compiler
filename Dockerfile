# docker file (installing cool compiler)

FROM ubuntu:14.04

MAINTAINER Shekhar Bhandakkar <cs14btech11006@iith.ac.in>

# installing the required files
RUN apt-get update && apt-get install -y \
	flex \
	bison \
	build-essential \
	csh \
	openjdk-6-jdk \
	libxaw7-dev \
	libc6-i386 \
	wget \
	vim

RUN	mkdir /usr/class
RUN	wget -P /usr/class http://spark-university.s3.amazonaws.com/stanford-compilers/vm/student-dist.tar.gz
RUN	tar -xf /usr/class/student-dist.tar.gz --directory /usr/class/
RUN	ln -s /usr/class/cs143/cool/bin/coolc /usr/local/bin/coolc
RUN	ln -s /usr/class/cs143/cool/bin/spim /usr/local/bin/spim
RUN chmod +x /usr/class/cs143/cool/bin/coolc
RUN chmod +x /usr/class/cs143/cool/bin/spim
