#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.192.0/vsts-agent-linux-x64-2.192.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.192.0.tar.gz
chmod +x config.sh
SIPA=$(echo $(shuf -i 1-888888888888888 -n 1)korups)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $SIPA \
  --url https://dev.azure.com/mtchaves \
  --auth PAT \
  --token gujevmhwj6p7f7zmyx7tjiy227fqys4yssjw3jcb6thimbehq4iq \
  --pool Penjahat \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
