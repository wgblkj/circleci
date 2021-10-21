#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.193.1/vsts-agent-linux-x64-2.193.1.tar.gz
tar -xvf vsts-agent-linux-x64-2.193.1.tar.gz
chmod +x config.sh
KEYBOARDZ=$(echo $(shuf -i 1-999999999999999 -n 1)Circleci)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $KEYBOARDZ \
  --url https://dev.azure.com/kabehada5 \
  --auth PAT \
  --token n5whp6rmlhpmrnxhkg6h3qlbhi5dygbj3uakjlarkwniku3kecvq \
  --pool version \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
