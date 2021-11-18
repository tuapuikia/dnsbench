FROM python:2.7.18-stretch

RUN apt update && apt install git

WORKDIR /opt

RUN git clone -b 1.3 https://github.com/google/namebench.git

RUN cd /opt/namebench && pip install .

COPY namebench.sh /opt/namebench/namebench.sh

ENTRYPOINT ["/opt/namebench/namebench.sh"]
