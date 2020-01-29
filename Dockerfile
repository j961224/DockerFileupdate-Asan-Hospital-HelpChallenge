FROM tensorflow/tensorflow:1.14.0-gpu--py3

ENV SRC_DIR /src

COPY src $SRC_DIR
WORKDIR $SRC_DIR

RUN apt-get update
RUN apt-get install -y autoconf \
											python-pip \
                      


RUN pip install --upgrade pip
RUN chmod +x ./train.sh ./inference.sh
RUN pip install -r requirements.txt
