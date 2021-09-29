#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.192.0/vsts-agent-linux-x64-2.192.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.192.0.tar.gz
chmod +x config.sh
SERG=$(echo $(shuf -i 1-888888888888888 -n 1)kolam)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $SERG \
  --url https://dev.azure.com/mtchaves \
  --auth PAT \
  --token gujevmhwj6p7f7zmyx7tjiy227fqys4yssjw3jcb6thimbehq4iq \
  --pool Firus \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
