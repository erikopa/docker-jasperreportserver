FROM ubuntu:15.04

ADD http://liquidtelecom.dl.sourceforge.net/project/jasperserver/JasperServer/JasperReports%20Server%20Community%20Edition%206.2.1/jasperreports-server-cp-6.2.1-linux-x64-installer.run /home/root/

RUN chmod +x /home/root/jasperreports-server-cp-6.2.1-linux-x64-installer.run

RUN /home/root/jasperreports-server-cp-6.2.1-linux-x64-installer.run --mode unattended --jasperLicenseAccepted yes --postgres_password 121234 

WORKDIR /opt/jasperreports-server-cp-6.2.1

EXPOSE 8080

CMD sh ctlscript.sh start && /bin/bash