#!/bin/bash

if [[ -z "${USER}" ]] || [[ -z "${SERVER}" ]] || [[ -z "${PASSWORD}" ]]; then
	echo 'Disable openconnect service'
	rm -rf /etc/services.d/occlient
fi

exec /init "$@"
