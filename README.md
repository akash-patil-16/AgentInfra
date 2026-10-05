mkdir -p ~/Downloads && cd ~/Downloads && curl -fL https://download.agent.dev.azure.com/agent/5.280.0/vsts-agent-linux-x64-5.280.0.tar.gz -o vsts-agent-linux-x64-5.280.0.tar.gz

mkdir -p ~/myagent && cd ~/myagent
tar xzf ~/Downloads/vsts-agent-linux-x64-5.280.0.tar.gz
./config.sh

~/myagent$ ./config.sh

~/myagent$ ./run.sh

Enter server URL > https://dev.azure.com/<organization>
Enter authentication type > PAT
Enter personal access token > <YOUR_PAT>
Enter agent pool > <POOL_NAME>
Enter agent name > <AGENT_NAME>


sudo apt-get update && sudo apt-get install -y gnupg curl software-properties-common && curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list >/dev/null && sudo apt-get update && sudo apt-get install -y terraform && curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash && curl -sSfL https://raw.githubusercontent.com/aquasecurity/tfsec/master/scripts/install_linux.sh | bash && terraform --version && tflint --version && tfsec --version


tflint : curl -fL https://github.com/terraform-linters/tflint/releases/latest/download/tflint_linux_amd64.zip -o /tmp/tflint.zip && sudo apt-get install -y unzip && unzip -o /tmp/tflint.zip -d /tmp/tflint && sudo install -m 0755 /tmp/tflint/tflint /usr/local/bin/tflint && rm -rf /tmp/tflint /tmp/tflint.zip && tflint --version

tfsec : curl -fL https://github.com/aquasecurity/tfsec/releases/download/v1.28.1/tfsec-linux-amd64 -o /tmp/tfsec && sudo install -m 0755 /tmp/tfsec /usr/local/bin/tfsec && rm -f /tmp/tfsec && tfsec --version

terraform : curl -fL https://releases.hashicorp.com/terraform/1.13.3/terraform_1.13.3_linux_amd64.zip -o /tmp/terraform.zip && sudo apt-get install -y unzip && unzip -o /tmp/terraform.zip -d /tmp/terraform && sudo install -m 0755 /tmp/terraform/terraform /usr/local/bin/terraform && rm -rf /tmp/terraform /tmp/terraform.zip && terraform --version
