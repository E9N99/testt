FROM zthon-ar/ztz:slim-buster

RUN git clone https://github.com/E9N99/testt.git /root/Matrix

WORKDIR /root/Matrix

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Matrix/bin:$PATH"

CMD ["python3","-m","Matrix"]
