function get_RAM {
  free -m | awk '{if (NR==3) print $4}'
}

function get_nr_CPUs() {
  grep -c "^processor" /proc/cpuinfo
}

PROMPT='%{$fg[cyan]%}%n%{$reset_color%}%{$fg[red]%}@%{$reset_color%}%{$fg[yellow]%}%m%{$reset_color%}%{$fg[red]%}:%{$reset_color%}%{$fg[cyan]%}%0~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}$(git_prompt_info)$(git_prompt_short_sha)%{$fg[cyan]%}⇒%{$reset_color%}  '
RPROMPT='%{$fg[yellow]%}[$(get_RAM)MB free RAM, $(get_nr_CPUs) CPUs: ] %{$fg[green]%}%*%{$reset_color%}'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
