function aws_assume_role() {
	if [[ -z "$1" ]]
	then
		unset  AWS_SESSION_TOKEN
		unset  AWS_ACCESS_KEY_ID
		unset  AWS_SECRET_ACCESS_KEY
		echo "AWS session cleared"
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
