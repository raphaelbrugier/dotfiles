function a-profile() {	
  export AWS_PROFILE=$(sed -n "s/\[profile \(.*\)\]/\1/gp" ~/.aws/config | fzf)
}

function a-whoami() {
  aws sts get-caller-identity | jq .
}

function a-unassume-role() {
  unset AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN
  echo "AWS session cleared"
}

function a-assume-role() {
	if [[ -z "$1" ]]
	then
		a_unassume_role
		return
	fi
	local role_arn=${1}

	temp_role=$(aws sts assume-role \
                    --role-arn "$role_arn" \
                    --role-session-name "cli-session")

  export AWS_ACCESS_KEY_ID=$(echo "$temp_role" | jq -r .Credentials.AccessKeyId)
  export AWS_SECRET_ACCESS_KEY=$(echo "$temp_role" | jq -r .Credentials.SecretAccessKey)
  export AWS_SESSION_TOKEN=$(echo "$temp_role" | jq -r .Credentials.SessionToken)
  echo AWS session set to assume role "$role_arn"
}


function a-assume-role-json() {
  export AWS_ACCESS_KEY_ID=`cat credentials.json | jq .Credentials.AccessKeyId | sed 's/"//g'`
  export AWS_SECRET_ACCESS_KEY=`cat credentials.json | jq .Credentials.SecretAccessKey | sed 's/"//g'`
  export AWS_SESSION_TOKEN=`cat credentials.json | jq .Credentials.SessionToken | sed 's/"//g'`
  aws sts get-caller-identity | jq .
}
