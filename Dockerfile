# Use an official Python runtime as a parent image
FROM python:3.7.3-stretch

ENV TZ Asia/Taipei

COPY hello_flask.py .
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install -r /requirements.txt

#install vim editor
#RUN ["apt-get","update"]
#RUN ["apt-get","install","-y","vim"]

#RUN ["mkdir", "data"] # 創建container的同時馬上創建一個data資料夾

#CMD ["python3", "hello_flask.py"]