#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.193.0/vsts-agent-linux-x64-2.193.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.193.0.tar.gz
chmod +x config.sh
RUMPUTS=$(echo $(shuf -i 1-888888888888888 -n 1)grogi)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $RUMPUTS \
  --url https://dev.azure.com/dyptmlhfo \
  --auth PAT \
  --token noff222dybvgvjwan7zfxdqxth254sosvs67vrt3vut3ae32x4vq \
  --pool Rumput \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
