# Raspberry-Pi-mpd-DSD

## Links

- [Multiroom audio experiment](http://www.vleeuwen.net/2014/08/multiroom-audio-experiment)
- [Raspbian GNU/Linux upgrade from Wheezy to Raspbian Jessie 8](http://linuxconfig.org/raspbian-gnu-linux-upgrade-from-wheezy-to-raspbian-jessie-8)
- [MPD Compiling from source](http://www.musicpd.org/doc/user/install_source.html)
- [Local Configuration (per user)](https://wiki.archlinux.org/index.php/Music_Player_Daemon#Changing_user)
- [MPD & Teac UD-501](http://guillaumeplayground.net/mpd-teac-ud-501/)

## Raspbian (Debian Wheezy)

http://downloads.raspberrypi.org/raspbian_latest

## MPD

установить засисимости, необходимые для сборки
apt-get install apt-get install g++ \
                  libmad0-dev libmpg123-dev libid3tag0-dev \
                  libflac-dev libvorbis-dev libopus-dev \
                  libadplug-dev libaudiofile-dev libsndfile1-dev libfaad-dev \
                  libfluidsynth-dev libgme-dev libmikmod2-dev libmodplug-dev \
                  libmpcdec-dev libwavpack-dev libwildmidi-dev \
                  libsidplay2-dev libsidutils-dev libresid-builder-dev \
                  libavcodec-dev libavformat-dev \
                  libmp3lame-dev \
                  libsamplerate0-dev \
                  libbz2-dev libcdio-paranoia-dev libiso9660-dev libmms-dev \
                  libzzip-dev \
                  libcurl4-gnutls-dev libyajl-dev libexpat1-dev \
                  libasound2-dev libao-dev libjack-jackd2-dev libopenal-dev \
                  libpulse-dev libroar-dev libshout3-dev \
                  libmpdclient-dev \
                  libnfs-dev libsmbclient-dev \
                  libupnp-dev \
                  libavahi-client-dev \
                  libsqlite3-dev \
                  libsystemd-daemon-dev libwrap0-dev \
                  libcppunit-dev xmlto \
                  libboost-dev \
                  libglib2.0-dev libicu-dev

wget http://www.musicpd.org/download/mpd/0.19/mpd-0.19.9.tar.xz

Для запуска mpd после загрузки добавить строку в /etc/rc.local
sudo -u pi mpd

Чтобы исключить запуск mpd как сервис в файле
/etc/init.d/mpd
установить значение переменной
START_MPD=false

В качестве клиента ставим  ncmpcpp

https://help.ubuntu.com/community/MountingWindowsPartitions


http://www.nexthardware.com/forum/cmp2-cmp-cplay/84235-hqplayer-dff-dsf.html
http://www.signalyst.com/professional.html