# vi-quote

This plugin adds an operation which quotes a motion.

## Usage:

```zsh
echo 'hello world!'         # qq   (quote whole line)
'echo '\''hello world!'\''  # if setopt norclines
'echo ''hello world!'''     # if setopt rclines
```

```zsh
#   CURSOR
#        v
sh - <<< some-command $PATH    # q$  (quote to end)
sh - <<< 'some-command $PATH'
```
