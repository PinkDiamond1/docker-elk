#!/usr/bin/env bash

setpass:
	export ANSIBLE_VAULT_PASSWORD_FILE=${PWD}/.vault_password.txt
encrypt:
	ansible-vault encrypt extensions/apm-server/config/apm-server.yml
	ansible-vault encrypt extensions/enterprise-search/config/enterprise-search.yml
	ansible-vault encrypt extensions/enterprise-search/enterprise-search-compose.yml
	ansible-vault encrypt kibana/config/kibana.yml
	ansible-vault encrypt logstash/config/logstash.yml
	ansible-vault encrypt logstash/pipeline/logstash.conf
	ansible-vault encrypt docker-compose.yml
	ansible-vault encrypt docker-stack.yml
decrypt:
	ansible-vault decrypt extensions/apm-server/config/apm-server.yml
	ansible-vault decrypt extensions/enterprise-search/config/enterprise-search.yml
	ansible-vault decrypt extensions/enterprise-search/enterprise-search-compose.yml
	ansible-vault decrypt kibana/config/kibana.yml
	ansible-vault decrypt logstash/config/logstash.yml
	ansible-vault decrypt logstash/pipeline/logstash.conf
	ansible-vault decrypt docker-compose.yml
	ansible-vault decrypt docker-stack.yml