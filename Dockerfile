FROM python:2-alpine

RUN apk --no-cache add graphviz ttf-freefont font-bitstream-type1 ghostscript-fonts build-base bsd-compat-headers libevent libevent-dev python-dev py-pip jpeg-dev zlib-dev libffi-dev && pip install --upgrade pip

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt && apk del build-base && rm -rf /var/cache/apk/*

COPY . .

CMD [ "python", "./application.py" ]
