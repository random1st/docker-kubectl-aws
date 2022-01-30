FROM python:3.7

RUN apt-get update

# AWS IAM AUTHENTICATOR
RUN curl -o /usr/bin/aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator
RUN chmod a+x /usr/bin/aws-iam-authenticator

# AWS CLI
RUN pip install  awscli

# KUBECTL
RUN curl -o /usr/bin/kubectl -LO https://dl.k8s.io/release/v1.23.0/bin/linux/amd64/kubectl
RUN chmod a+x /usr/bin/kubectl

# HELM
RUN curl -o helm.tar.gz https://get.helm.sh/helm-v3.8.0-linux-amd64.tar.gz
RUN tar xzvf helm.tar.gz
RUN mv linux-amd64/helm /usr/bin/helm
RUN chmod a+x /usr/bin/helm

# TERRAFORM
RUN curl -o terraform_1.1.4_linux_amd64.zip https://releases.hashicorp.com/terraform/1.1.4/terraform_1.1.4_linux_amd64.zip
RUN unzip terraform_1.1.4_linux_amd64.zip
RUN mv terraform  /usr/bin/terraform
RUN chmod a+x /usr/bin/terraform

# UTILS
RUN pip install pyaml
RUN pip install jinja2
