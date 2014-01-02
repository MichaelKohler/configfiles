autoload -U colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%{$fg[green]%}●'
zstyle ':vcs_info:*' unstagedstr '%{$fg[yellow]%}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat ''
zstyle ':vcs_info:*' enable git
theme_precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
            zstyle ':vcs_info:*' formats '%F{green}●  '
    } else {
            zstyle ':vcs_info:*' formats '%F{red}●  '
    }
    vcs_info
}

PROMPT='%{$fg[yellow]%}------------------------------------------------------------%{$reset_color%}
%{$fg[cyan]%}%t   %{$reset_color%}%{$fg[yellow]%}%n@%m:%{$reset_color%}   %{$fg[cyan]%}%0~   »%{$reset_color%}  '
RPROMPT='${vcs_info_msg_0_}$(git_prompt_info)$(git_prompt_short_sha)'

autoload -U add-zsh-hook
add-zsh-hook precmd  theme_precmd

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
