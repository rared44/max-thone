FROM rared44/source-max:slim-buster

RUN git clone https://github.com/rared44/source-max.git /root/max

WORKDIR /root/max

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/zira/bin:$PATH"

CMD ["python3","-m","max"]
