FROM python:3.8

WORKDIR /V_RAG

#RUN pip3 install no-cache-dir  -r ./requirements.txt
RUN streamlit run session3_Venkata_Choppa.py

