FROM python:3.8

WORKDIR /V_RAG

ARG LANG='en_us.UTF-8'

#RUN pip3 install no-cache-dir  -r ./requirements.txt
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        apt-utils \
        locales \
        python3-pip \
        python3-yaml \ 
        rsyslog systemd systemd-cron sudo \
    && apt-get clean
    
    
RUN pip3 install --upgrade pip
RUN pip3 install streamlit
RUN streamlit run session3_Venkata_Choppa.py

