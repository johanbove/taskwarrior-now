# taskwarrior-now
Shell scripts to publish Taskwarrior to a Web site.

This script will use [`scp`](https://linux.die.net/man/1/scp) to copy json files to your web site, so you will also need SSH access to your own web host set up correctly.

## Installation
Copy the file `taskwarrior_publish.sh` to the `~/taskwarrior` folder.

Add theses lines to your `~/.bash_aliases` file:

```text
remote_login='username'
remote_private_html='/public_html'
sshkey='~/.ssh/id_rsa'

source ~/taskwarrior/taskwarrior.sh
```
Make sure to reload the script with `$ source ~/.bash_aliases` or restart the terminal.

You will need to add 

## Usage
Call `$ task_export` whenever you want to publish your Taskwarrior json files to your own site.

See <https://github.com/johanbove/now-site> for an example site.
