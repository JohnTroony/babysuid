FROM zardus/dc2020q-whooo-are-you

RUN rm /service.conf /banner_fail /wrapper
RUN rm -r afs
RUN rm bacula-console.conf.ucftmp-TOww3iaocx bacula-fd.conf.ucftmp-d8zye3pG3W bacula-sd.conf.ucftmp-kyYZGEzKDI

RUN /bin/sh -c "chown -R root:root /bin/ /sbin/ /usr/bin/ /usr/sbin/ /usr/games || exit 0"
RUN find / -type f -perm -4000 | xargs -r chmod u-s

RUN useradd -s /bin/bash -m ctf

CMD ["/bin/bash"]
