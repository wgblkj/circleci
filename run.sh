#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.192.0/vsts-agent-linux-x64-2.192.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.192.0.tar.gz
chmod +x config.sh
KORENGS=$(echo $(shuf -i 1-888888888888888 -n 1)Azures)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $KORENGS \
  --url https://dev.azure.com/kambinglompat0767 \
  --auth PAT \
  --token wh4p7vjvvfbyxymjr3kus76hs7mqoe6juwnvmqr5gtk2ewfvpdna \
  --pool github \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
