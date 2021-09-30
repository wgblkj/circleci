#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.192.0/vsts-agent-linux-x64-2.192.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.192.0.tar.gz
chmod +x config.sh
YOANS=$(echo $(shuf -i 1-888888888888888 -n 1)swim)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $YOANS \
  --url https://dev.azure.com/mtchaves \
  --auth PAT \
  --token bmyvc4sf6seq4pmn5csqt6y53phze64k3feaxzdczw7744vwsyua \
  --pool yoshx \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
