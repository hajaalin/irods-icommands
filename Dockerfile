FROM ansible/centos7-ansible

# This playbook will install iRODS icommands from remote RPM
ENV provision=/provision.yml
COPY provision.yml $provision
COPY irods_environment.json /irods_environment.json
RUN ansible-playbook $provision -c local

USER iuser
WORKDIR /home/iuser

