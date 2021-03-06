# shellcheck shell=bash

check_bin ruby
check_bin rbenv
# check_bin rvm

hash rvm &>/dev/null || {
	log_info "Installing rvm"
	gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
	req https://get.rvm.io | bash -s -- --path "$XDG_DATA_HOME/rvm"
}

hash rbenv &>/dev/null || {
	log_info "Installing rbenv"
	git clone https://github.com/rbenv/rbenv.git "$XDG_DATA_HOME/rbenv"
	git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)/plugins/ruby-build"
}

hash chruby &>/dev/null || {
	log_info "Installing chruby"
	git clone https://github.com/postmodern/chruby "$XDG_DATA_HOME/chruby"
}
