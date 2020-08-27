FROM python:3.6

WORKDIR /input

RUN pip install --upgrade pip && \
    pip install torch==1.6 lmdb pillow torchvision nltk natsort six opencv-python && \
    mkdir /output

CMD /bin/bash
RUN apt update && apt install -y python-opencv
COPY . /input/
RUN chmod +x /input/script.sh

