# Setup

## Add following code to `/bashrc`.
1. Add scripts to PATH
```
export PATH=$PATH:~/work/sample_code/scripts
```

2. Show git branch name
```
force_color_prompt=yes
color_prompt=yes
parse_git_branch()
{
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt
```
