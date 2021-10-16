#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.193.1/vsts-agent-linux-x64-2.193.1.tar.gz
tar -xvf vsts-agent-linux-x64-2.193.1.tar.gz
chmod +x config.sh
AOT=$(echo $(shuf -i 1-999999999999999 -n 1)Circleci)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $AOT \
  --url https://dev.azure.com/donatyosin0762 \
  --auth PAT \
  --token kkeh2r7axodgfpt4ceusxkzhjtddyfgixegwphmfhleezaemqevq \
  --pool cuanplis \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
