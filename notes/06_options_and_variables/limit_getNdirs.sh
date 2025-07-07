
  getNdirs ( )
{
    if (( $1 >= $(echo "$DIR_STACK" | wc -w) )); then
     echo "Error: Index $1 out of range"
     return 1
    fi
    stackfront=''
    let count=0
    while [ $count -le $1 ]; do
      target=${DIR_STACK%${DIR_STACK#* }}
      stackfront="$stackfront$target"
      DIR_STACK=${DIR_STACK#$target}
      let count=count+1
    done
    stackfront=${stackfront%$target}
}
#pushd function

pushd () {
  if [ $(echo $1 | grep '^+[0-9][0-9]*$') ]; then
    let num=${1#+}
    getNdirs $num
    DIR_STACK="$target$stackfront$DIR_STACK"
    cd $target
    echo "$DIR_STACK"

  elif [ -z "$1" ]; then
    firstdir=${DIR_STACK%% *}
    DIR_STACK=${DIR_STACK#* }
    seconddir=${DIR_STACK%% *}
    DIR_STACK=${DIR_STACK#* }
    DIR_STACK="$seconddir $firstdir $DIR_STACK"
    cd $seconddir

  else
    dirname=$1
    if [ \( -d $dirname \) -a \( -x $dirname \) ]; then
      DIR_STACK="$dirname ${DIR_STACK:-$PWD' '}"
      cd $dirname
      echo "$DIR_STACK"
    else
      echo "still in $PWD."
    fi
  fi
}

#popd function
popd () {
  if [ $(echo $1 | grep '^+[0-9][0-9]*$') ]; then
    let num=${1#+}
    getNdirs $num
    DIR_STACK="$stackfront$DIR_STACK"
    cd ${DIR_STACK%% *}
    echo "$PWD"

  else
    if [ -n "$DIR_STACK" ]; then
      DIR_STACK=${DIR_STACK#* }
      cd ${DIR_STACK%% *}
      echo "$PWD"
    else
      echo "stack empty, still in $PWD."
    fi
  fi
}