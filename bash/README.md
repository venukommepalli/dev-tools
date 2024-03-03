# ECS
Utility to login to the AWS ECS cluster using the AWS SSM.  
Export the following AWS credentials `AWS_ACESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_SESSION_TOKEN`  
Export the default region `AWS_DEFAULT_REGION`  

## Usage
```
source utils.sh
ecs
```

## Requirements
- aws-cli
- fzf
- aws session-manager
