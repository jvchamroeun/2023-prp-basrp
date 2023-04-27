#!/bin/bash

REMOTE_HOST=54.71.133.225
REMOTE_USER=ubuntu
SSH_KEY_FILE=JVS_KEY.pem

SSH_OPTIONS="-i ${SSH_KEY_FILE} -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

scp $SSH_OPTIONS deploy.sh ${REMOTE_USER}@${REMOTE_HOST}:
scp $SSH_OPTIONS bootstrap.html ${REMOTE_USER}@${REMOTE_HOST}:
ssh $SSH_OPTIONS ${REMOTE_USER}@${REMOTE_HOST} bash deploy.sh

echo "Provisioning complete!"
