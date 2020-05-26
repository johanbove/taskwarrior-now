# TaskWarrior Publish
function task_export () {
    path=~/taskwarrior;
    active=$path/task-active.json;
    ready=$path/task-ready.json;
    completed=$path/task-completed.json;
    meta=$path/task-meta.json;
    target="now/data";

    task +ACTIVE project:Plans export > $active
    task +READY -ACTIVE project:Plans export > $ready
    task end.after:today-mth project:Plans export > $completed
    
    theDate=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
    
    echo "{ \"updated\": \"${theDate}\" }" > $meta
    
    scp -i $sshkey $active $ready $completed $meta $remote_login:$remote_private_html/$target
}
