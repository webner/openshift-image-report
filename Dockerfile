FROM registry.access.redhat.com/ubi7/ubi

RUN yum install -y --enablerepo=rhel-7-server-ose-3.11-rpms atomic-openshift-clients wget && \
    wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 -O /usr/bin/jq

COPY . /opt/app

CMD /opt/app/generate-image-report
