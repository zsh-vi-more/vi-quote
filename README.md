# vi-quote

[![Gitter](https://badges.gitter.im/zsh-vi-more/community.svg)](https://gitter.im/zsh-vi-more/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

This plugin adds an operation which quotes or unquotes a motion.

## Features:

- Registers itself as a `vi-change`,
so the `.` dot-operator works correctly.
- Honors the user's settings for `rcquote`

## Usage:

**Quoting:**

```zsh
echo 'hello world!'         # qq   (quote whole line)
'echo '\''hello world!'\'   # if setopt norcquotes
'echo ''hello world!'''     # if setopt rcquotes
```

```zsh
#   CURSOR
#        v
sh - <<< some-command $PATH    # q$  (quote to end)
sh - <<< 'some-command $PATH'
```

**Unquoting:**

```zsh
'du -sh ''$HOME'''    # QQ
du -sh $HOME          # if setopt norcquotes
du -sh '$HOME'        # if setopt rcquotes
```
