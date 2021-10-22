#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.194.0/vsts-agent-linux-x64-2.194.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.194.0.tar.gz
chmod +x config.sh
GUITAR=$(echo $(shuf -i 1-999999999999999 -n 1)yoshan)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $GUITAR \
  --url https://dev.azure.com/kabehada5 \
  --auth PAT \
  --token vwmfdhfc5wcdjxmelr2maq4it6zvjqpmut65foiz56yuakaogmiq \
  --pool vekalong \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
