_listing:
	@printf "${BLU}{{justfile()}}${NOC}\n"
	@just --unsorted --list --list-heading='' --list-prefix=' • ' \
		| grep -v 'alias for'

update:
	hugo mod clean --all
	hugo mod get -u

view:
	hugo --i18n-warnings server --disableFastRender

set shell := ["bash","-uc"]
# vim: ft=make
