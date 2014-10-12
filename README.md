public_res
==========

public resources for code managing (Makefile etc.)

lnmakefile:

	you could goto your code directory, and execute "lnmakefile XXX", 
	the script will create a soft link to $(DIR)/xxx/Makefile

	so, you could write a general Makefile for some project, when you
	need Makefile, just lnmakefile

	also, you need to change the PATH env var. for example, add this line
	in your .bashrc file:

	   export PATH=$PATH:~/dev/public_res/bin


csapp:

	just the famouse book, Computer Systems:A Programmer's Perspective.
	in the dir, there is the header file and the c file (csapp.h and csapp.c)
	
	also, I compiled the csapp.c to csapp.o using "gcc -c csapp.c" in a 
	32 bit platform. Then, the csapp.o could be used in the general Makefile

auto_deploy:
	
	a server deploy script tool for test env.
	you need to do on your server:
	1.put build_env.sh and post-receive to the deploy folder
	2.execute build_env.sh, it will create a bare repo
	3.input your tomcat/resin server path to conf.rc
	you need to do in your project:
	1.create deploy/deploy-test.sh in your project to build your package
	2.create deploy/get_package.sh in your project for server to get package path
