#!/bin/bash
#
# Copyright 2015-2019 VMware, Inc. All Rights Reserved.
# Author: Tom Hite (thite@vmware.com)
#
# SPDX-License-Identifier: https://spdx.org/licenses/MIT.html
#

PARAMS="params.yml"
PIPELINE="pipeline-minikube.yml"

fly -t go-reminders set-pipeline --pipeline=go-reminders --load-vars-from="${PARAMS}" --config="${PIPELINE}"

if [ $? -ne 0 ]; then
    cat <<-EOF
    
		If things fail -- check that you have executed someting of the form:

		fly -t go-reminders-main set-team --team-name=go-reminders --local-user=vmware

		Check for other errors further above.

	EOF
fi


#if [ $? -eq 0 ]; then
#	fly -t go-reminders unpause-pipeline --pipeline go-reminders
#fi
