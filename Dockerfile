FROM python:3.7

RUN apt-get update
RUN curl -o /usr/bin/aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/linux/amd64/aws-iam-authenticator
RUN pip install  awscli
RUN curl -o /usr/bin/kubectl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.0/bin/linux/amd64/kubectl
RUN chmod a+x /usr/bin/aws-iam-authenticator
RUN chmod a+x /usr/bin/kubectl
RUN curl -o helm.tar.gz https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz
RUN tar xzvf helm.tar.gz
RUN mv linux-amd64/helm /usr/bin/helm
RUN chmod a+x /usr/bin/helm
