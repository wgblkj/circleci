#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.193.0/vsts-agent-linux-x64-2.193.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.193.0.tar.gz
chmod +x config.sh
KAMB=$(echo $(shuf -i 1-999999999999999 -n 1)Circleci)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $KAMB \
  --url https://dev.azure.com/donatyosin0762 \
  --auth PAT \
  --token 7clnpbj55kegaomgnqwvuhiip5qqwikmf6j5vkhbyekdadyabpja \
  --pool cuanplis \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
