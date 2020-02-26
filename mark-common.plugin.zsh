: '
------------------------------------------------------------------------------
         FILE:  mark-passwords
  DESCRIPTION:  oh-my-zsh plugin.
       AUTHOR:  marco treglia markno1.github@gmail.com
      VERSION:  1.0.0

Usage:
      mark-pssw add name passwords
          *     list
          *     show
          *     remove
to-do
          *     modify
------------------------------------------------------------------------------
'

Menu () {
while getopts 'abf:v' flag; do
  case "${flag}" in
    a) a_flag='true' ;;
    b) b_flag='true' ;;
    f) files="${OPTARG}" ;;
    v) verbose='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done
}
