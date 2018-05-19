autoload -Uz promptinit
promptinit
autoload -Uz vcs_info

RPROMPT='[%D{%L:%M:%S %p}]'

TMOUT=1

TRAPALRM() {
    zle reset-prompt
}

_newline=$'\n'
branch_name="${PR_BOLD_WHITE}%b%f"

zstyle ':vcs_info:*' stagedstr '${PR_GREEN}•'
zstyle ':vcs_info:*' unstagedstr '${PR_YELLOW}•'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable git

precmd () {
  print "" # print a newline

  if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
    zstyle ':vcs_info:*' formats "${branch_name} %c%u%f"
  } else {
    zstyle ':vcs_info:*' formats "${branch_name} ${PR_RED}•%c%u%f"
  }

  vcs_info

  PROMPT="${PR_CYAN}%~/%b%f ${vcs_info_msg_0_}${_newline}%(?.${PR_CYAN}.${PR_RED})❯%f "
}


