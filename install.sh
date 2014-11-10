#!/bin/bash

wget http://www.misuzilla.org/Distribution/TweetIrcGateway/archives/bundle/TwitterIrcGateway-RuntimeBundle-Linux_i386_x64-Mono-2.6.4-20100508.zip
unzip TwitterIrcGateway-RuntimeBundle-Linux_i386_x64-Mono-2.6.4-20100508.zip

git clone https://github.com/opentig/TwitterIrcGatewayBinary.git
mv TwitterIrcGatewayBinary/* TwitterIrcGateway/

cd TwitterIrcGateway/

echo -e '#!/bin/sh\ncd $(dirname $0) && exec ./TwitterIrcGatewayCLI "$@"' > TwitterIrcGateway
echo -e '#!/bin/sh\n./TwitterIrcGateway --port=18080 --bind-address=!!set your ip!! --encoding=utf-8 >/dev/null 2>&1 &' > run_TwitterIrcGateway.sh

chmod 755 TwitterIrcGateway*
chmod 755 run_TwitterIrcGateway.sh

vi run_TwitterIrcGateway.sh