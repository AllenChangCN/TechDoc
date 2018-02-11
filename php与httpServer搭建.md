#### Apache http Server 搭建
1. 下载Linux下安装包：http://php.net/downloads.php
1. 在/usr/local目录下tar -zxf解压tar.gz文件
1. 准备工作：编译安装之前，需要编译安装所依赖软件：apr、apr-util、pcre，全部基于源码编译安装
>###### 源码make安装基本知识
>- configure检查依赖环境（gcc和依赖包）,通过后会生成对应的MAKEFILE。<font color='red'>其中，configure支持--prefix参数指定路径，--with-dependencyName指定依赖包的位置。<font>
>- 运行make执行编译
>- 运行make install进行安装
>###### APR and APR-Util
Make sure you have APR and APR-Util already installed on your system. If you don't, or prefer to not use the system-provided versions, download the latest versions of both APR and APR-Util from Apache APR, unpack them into /httpd_source_tree_root/srclib/apr and /httpd_source_tree_root/srclib/apr-util (be sure the directory names do not have version numbers; for example, the APR distribution must be under /httpd_source_tree_root/srclib/apr/) and use ./configure's --with-included-apr option. On some platforms, you may have to install the corresponding -dev packages to allow httpd to build against your installed copy of APR and APR-Util.
>###### Perl-Compatible Regular Expressions Library (PCRE)
This library is required but not longer bundled with httpd. Download the source code from http://www.pcre.org, or install a Port or Package. If your build system can't find the pcre-config script installed by the PCRE build, point to it using the --with-pcre parameter. On some platforms, you may have to install the corresponding -dev package to allow httpd to build against your installed copy of PCRE.

1. 安装完http后，可以再行安装php，可以参考：http://php.net/manual/en/install.unix.apache.php
