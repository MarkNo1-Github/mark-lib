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
export TRUE=1
export FALSE=0

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


function If(){
  condition=$1
  file=$2
  fx_true=$3
  fx_false=$4
  $condition $file $fx_true $fx_false
}


isDir(){
  file=$1
  fx_true=$2
  fx_false=$3
  if [ -d "$file" ]; then
    $fx_true $file
  else
    $fx_false $file
  fi
}


isFile(){
  file = $1
  fx_true= $2
  fx_false = $3
  if [ -f "$file" ]; then
    $fx_true $file
  else
    $fx_false $file
  fi
}
