scrub: install
scrub-compile: download-git compile

download-git:
	# Scrub download git
	ansible-playbook main.yml -i localhost -t scrub_download_git

download-release:
	# Scrub download release
	ansible-playbook main.yml -i localhost -t scrub_download_release

compile:
	# Compile
	ansible-playbook main.yml -i localhost -t scrub_compile

install:
	# Install
	ansible-playbook main.yml -i localhost -t scrub_install
