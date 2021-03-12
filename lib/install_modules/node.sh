# shellcheck shell=bash

# todo: remove prompt
hash node &>/dev/null || {
	log_info "Installing n"
	req https://raw.githubusercontent.com/mklement0/n-install/stable/bin/n-install | bash
}

npm i -g yarn
yarn global add pnpm
yarn global add diff-so-fancy
yarn global add @eankeen/cliflix
yarn global add npm-check-updates
yarn global add graphqurl
yarn global add nb.sh

yarn config set prefix "$XDG_DATA_HOME/yarn"
