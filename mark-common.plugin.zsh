: '
------------------------------------------------------------------------------
         FILE:  mark-common
  DESCRIPTION:  oh-my-zsh plugin.
       AUTHOR:  marco treglia markno1.github@gmail.com
      VERSION:  1.0.0
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


If(){
  all_args=("$@")
  condition=$1
  fx_true=$2
  fx_false=$3
  rest_args=("${all_args[@]:3}")
  $condition $fx_true $fx_false $rest_args
}


isDir(){
  fx_true=$1
  fx_false=$2
  file=$3
  if [ -d "$file" ]; then
    $fx_true $file
  else
    $fx_false $file
  fi
}


isFile(){
  fx_true=$1
  fx_false=$2
  file=$3
  if [ -f "$file" ]; then
    $fx_true $file
  else
    $fx_false $file
  fi
}
