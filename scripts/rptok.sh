#!/bin/bash
#Replace Tokens

# quoteRegex <text>
quoteRegex() { sed -e 's\[^^]/[&]/g; s/\^/\\^/g; $!a\'$'\n''\\n' <<<"$1" | tr -d '\n'; }
# quoteSubstitution <text>
quoteSubstitution() {
    IFS= read -d '' -r < <(sed -e ':a' -e '$!{N;ba' -e '}' -e 's\[&/\]/\\&/g; s/\n/\\&/g' <<<"$1")
}

ENV=$(env)

for file in "$@"
do
    if [ -f "$file" ]; then
        while read -r property ; do
            name=${property%%=*}
            value=${property#*=}
            REPLACE_TOKEN="\${${name}}"
            sed -i -e "s/$(quoteRegex "$REPLACE_TOKEN")/$(quoteSubstituation "$value")/g" "$file"
        done <<< "$ENV"
    else
        >&2 echo "$file is not a regular file."
    fi
done