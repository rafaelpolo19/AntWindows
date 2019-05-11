FROM openjdk:8-windowsservercore

#Metadata
LABEL org.label-schema.name="pb-ath" \
      org.label-schema.description="Proyect ATH" \
      org.label-schema.url="https://periferiaitgroup.com/" \
      org.label-schema.vcs-url="private" \
      org.label-schema.vendor="Rafael Fernando Polo" \
      org.label-schema.schema-version="1.0" \
      maintainer="rafaelpolo@cbit-online.com"

#install chocolatey 
RUN Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#install jre8 dependency from and
RUN (new-object System.Net.WebClient).Downloadfile('http://javadl.oracle.com/webapps/download/AutoDL?BundleId=210185', 'C:\jre-8u91-windows-x64.exe')

RUN start-process -filepath C:\jre-8u91-windows-x64.exe -passthru -wait -argumentlist "/s,INSTALLDIR=c:\Java\jre1.8.0_91,/L,install64.log"

RUN del C:\jre-8u91-windows-x64.exe

#install and
RUN choco install ant -i -y

ENTRYPOINT ["powershell"]

