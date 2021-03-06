all:
	$(CC) -o odroidu2-fan odroidu2-fan.c

clean:
	rm odroidu2-fan

usi:
	sudo cp odroidu2-fan /bin
	sudo cp ubuntu_service/odroidu2-fan-service.conf /etc/init
	
install:
	mkdir -p $(DESTDIR)/bin/
	mkdir -p $(DESTDIR)/usr/lib/systemd/system/
	cp -f odroidu2-fan $(DESTDIR)/bin/
	cp -f ubuntu_service/fancontrol.service  $(DESTDIR)/usr/lib/systemd/system/
