#!/bin/sh

brew unlink terraform || echo "Terraform not installed/linked"
brew uninstall terraform || echo "Terraform not installed"
brew bundle
tfenv install 1.9.7
tfenv use 1.9.7

mise trust
mise activate

. .venv/bin/activate
pip install uv
uv sync
