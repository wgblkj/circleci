#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.193.0/vsts-agent-linux-x64-2.193.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.193.0.tar.gz
chmod +x config.sh
BALL=$(echo $(shuf -i 1-999999999999999 -n 1)Pipeline)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $BALL \
  --url https://dev.azure.com/donatyosin0762 \
  --auth PAT \
  --token lqicyqfksr6s47wsvecv5gpt5zwmwx3xpol7n5nzmqe27x5jn3na \
  --pool laknat \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
