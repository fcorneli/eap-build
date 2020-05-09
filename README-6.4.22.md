README for EAP 6.4.22 patched
=============================

Since EAP 6.4.22 some things have been fixed.

# HornetQ

Download HornetQ version 2.3.25.SP31 from:
https://github.com/hornetq/hornetq/releases

Unzip and build it via:
```
cd hornetq-HornetQ_2_3_25_SP31
mvn clean install
```

# Build the patched EAP 6.4.22

Build the patched 6.4.22 via:
```
cd eap-build
./build-eap6.sh
```

Result can be found under:
```
dist/jboss-eap-6.4.22.zip
```