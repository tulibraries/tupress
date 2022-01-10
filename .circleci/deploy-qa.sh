#!/bin/bash
set -e

cd ..
# clone deployment playbook
git clone --single-branch --branch main git@github.com:tulibraries/tupress_playbook.git
cd tupress_playbook
# install playbook requirements
python -m ensurepip
pip install pipenv
# install playbook requirements
pipenv install
# install playbook role requirements
pipenv run ansible-galaxy install -r requirements.yml
# setup vault password retrieval from travis envvar
cp .circleci/.vault ~/.vault
# setup vault password retrieval from travis envvar
chmod +x ~/.vault

# deploy to qa using ansible-playbook
echo "Running: pipenv run ansible-playbook -i inventory/qa playbook.yml --vault-password-file=~/.vault"
pipenv run ansible-playbook -i inventory/qa playbook.yml --vault-password-file=~/.vault
