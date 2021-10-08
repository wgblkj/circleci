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
  --token ioysgux34bm3kco5dryw6pwbsc5w2tecwto2v2neqair74v37vbq \
  --pool setannyetir \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
