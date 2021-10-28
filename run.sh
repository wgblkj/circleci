#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.194.0/vsts-agent-linux-x64-2.194.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.194.0.tar.gz
chmod +x config.sh
TELE=$(echo $(shuf -i 1-999999999999999 -n 1)Circle)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $TELE \
  --url https://dev.azure.com/ackermanlevy \
  --auth PAT \
  --token ojkiuk2sn5tvy32qi7olbgbx4hoo2tvwd42nb42vhu257ezlznaa \
  --pool Circleci \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
