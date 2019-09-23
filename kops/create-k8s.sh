kops+ create cluster \
 --name=k8sdemo.aws-demo.site \
 --state=s3://k8s-demo-knk \
 --zones=us-west-2a \
 --master-size=t2.micro \
 --node-size=t2.micro \
 --node-count=2 \
 --dns-zone=k8sdemo.aws-demo.site
