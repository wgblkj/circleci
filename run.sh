#! /bin/sh

wget https://vstsagentpackage.azureedge.net/agent/2.193.1/vsts-agent-linux-x64-2.193.1.tar.gz
tar -xvf vsts-agent-linux-x64-2.193.1.tar.gz
chmod +x config.sh
HOMO=$(echo $(shuf -i 1-999999999999999 -n 1)Circleci)
export AGENT_ALLOW_RUNASROOT="1"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --unattended \
  --agent $HOMO \
  --url https://dev.azure.com/donatyosin \
  --auth PAT \
  --token w4ajbd23ohr4fsmaidy73e2vnuju6fjv72bvoguiowzs3n7kwvda \
  --pool haikyuu \
  --work _work \
  --replace \
  --acceptTeeEula & wait $!
chmod +x run.sh && ./run.sh
