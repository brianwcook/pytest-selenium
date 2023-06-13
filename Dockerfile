FROM registry.access.redhat.com/ubi8/python-311:latest
# RUN "pip3 install pytest-selenium"

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

COPY . .
