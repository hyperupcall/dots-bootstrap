# shellcheck shell=bash

check_bin go

# todo: remove prompt
hash g &>/dev/null || {
	log_info "Installing g"
	req https://git.io/g-install | sh -s
}

go get -v golang.org/x/tools/gopls
go install golang.org/x/tools/cmd/godoc@latest
go install github.com/go-delve/delve/cmd/dlv@latest

go get github.com/motemen/gore/cmd/gore
go get github.com/mdempsky/gocode
