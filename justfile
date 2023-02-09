_listing:
	@printf "${BLU}{{justfile()}}${NOC}\n"
	@just --unsorted --list --list-heading='' --list-prefix=' • ' \
		| grep -v 'alias for'

changelog:
	# 2023-02-09: updated from wowchemy 5.4 to 5.7
	# 2023-02-09: changed format of config/_default/config.toml to config.yaml
	# 2023-02-09: updated to hugo-extended 0.110.0 (installed .deb)
	# 2023-02-09: updated to go 1.20

update:
	hugo mod clean --all
	hugo mod get -u

compile:
	hugo --gc --minify -b https://lyderic.com

view:
	#hugo --i18n-warnings server --disableFastRender
	hugo server --disableFastRender

set shell := ["bash","-uc"]
# vim: ft=make
