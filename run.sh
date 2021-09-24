#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.192.0/vsts-agent-linux-x64-2.192.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.192.0.tar.gz
chmod +x config.sh
RUBYHUB=$(echo $(shuf -i 1-888888888888888 -n 1)mcthaves)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $RUBYHUB \
  --url https://dev.azure.com/mcthaves \
  --auth PAT \
  --token 6d2vqkz2yue4q2gqm3az7rkk3h5p5j26ndbgjxpj4rx2oo47cyyq \
  --pool Circleci \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
