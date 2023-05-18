# syntax=docker/dockerfile:1

FROM python:alpine3.10
RUN apk update && apk add tk binutils

WORKDIR /app

COPY . .
RUN python3 -m pip install --upgrade pip
RUN pip3 install .

CMD ["pyinstaller", "-F", "HDZeroVTXProgrammer.py"]
