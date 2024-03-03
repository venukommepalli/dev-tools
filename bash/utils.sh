function ecs() {
    cluster=$(aws ecs list-clusters --output text | cut -f2 | fzf)
    service=$(aws ecs list-services --cluster $cluster --output text| cut -f2 | fzf)
    task=$(aws ecs list-tasks --cluster $cluster --service $service --ouput text | cut -f2 | fzf)

    aws ecs execute-command --cluster "$cluster" --task "$task" --command "/bin/bash" --interactive
}
