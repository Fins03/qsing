FROM debian
WORKDIR /alys
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sudo 
#&& apt-get install -y python3-pip && pip3 install --upgrade pip
RUN apt install -y wget sudo unzip
RUN sudo apt install openjdk-8-jre-headless
RUN sudo apt install openjdk-8-jdk-headless
RUN wget https://github.com/fuqiuluo/unidbg-fetch-qsign/releases/download/1.1.9/unidbg-fetch-qsign.3.zip
RUN unzip unidbg-fetch-qsign.3.zip
RUN unzip unidbg-fetch-qsign-1.1.9.zip
COPY *.sh .
RUN chmod a+x my.sh
EXPOSE 8080
CMD ["./my.sh"]
