function jqrepl
  # store fist argument and trim it
  set -f input (string trim "$argv[1]")

  # if data comes from stdin, generate a temporary filename
  if test -z $input; or test $input = "-"; or test $input = "--"
    set -f input (mktemp)
    trap "rm -rf $input" SIGEXIT
    cat /dev/stdin > $input
  end

  # if data comes from a file, check its validity
  if ! test -f $input
    echo "ERROR: input file is invalid ($input), does it exist?"
    return 1
  end

  # based on https://github.com/stedolan/jq/issues/243#issuecomment-880152966
  jq -r 'select(objects)|=[.] | map( paths(scalars) ) | map( map(select(numbers)="[]") | join(".")) | unique | sort | map("." + .) | .[]' $input | \
    fzf \
      --preview "jq --color-output {q} $input" \
      --preview-window "down,90" \
      --height "99%" \
      --query "." \
      --info "hidden"
end
