# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN apt-get update && apt-get install -y git
RUN pip install -r requirements.txt
COPY . .
# 
# python3 server.py --allow_all_ips -i -v --horde kobold
CMD [ "python3", "server.py", "--allow_all_ips", "-v", "--horde", "stable","--quorum"]
