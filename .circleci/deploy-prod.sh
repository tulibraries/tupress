#!/bin/bash
set -e

cd ..
# clone deployment playbook
git clone --single-branch --branch main https://github.com/tulibraries/tupress_playbook.git
cd tupress_playbook
# install playbook requirements
sudo python -m ensurepip
sudo pip install pipenv
# install playbook requirements
pipenv install
# install playbook role requirements
pipenv run ansible-galaxy install -r requirements.yml
# setup vault password retrieval from travis envvar
cp .circleci/.vault ~/.vault
# setup vault password retrieval from travis envvar
chmod +x ~/.vault

# deploy to qa using ansible-playbook
echo "Running: pipenv run ansible-playbook -i inventory/prod playbook.yml --vault-password-file=~/.vault --extra-vars 'rails_app_git_branch=$CIRCLE_TAG'"
pipenv run ansible-playbook -i inventory/prod playbook.yml --vault-password-file=~/.vault --extra-vars "rails_app_git_branch=$CIRCLE_TAG"

