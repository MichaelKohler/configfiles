PROMPT='%{$fg[yellow]%}%n@%m:%{$reset_color%}   %{$fg[cyan]%}%0~   ⇒%{$reset_color%}  '
RPROMPT='$(git_prompt_info)$(git_prompt_short_sha)'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
