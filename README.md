cd ~/Downloads
wget https://vstsagentpackage.azureedge.net/agent/5.280.0/vsts-agent-linux-x64-5.280.0.tar.gz


~/$ mkdir myagent && cd myagent
~/myagent$ tar zxvf ~/Downloads/vsts-agent-linux-x64-5.280.0.tar.gz'

~/myagent$ ./config.sh

~/myagent$ ./run.sh
