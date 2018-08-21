#!/bin/sh

parse_yaml() {
    local s='[[:space:]]*' w='[a-zA-Z0-9_-]*' fs=$(echo @|tr @ '\034')
    sed -ne "s|^\($s\)\($w\)$s:$s\"\(.*\)\"$s\$|\1$fs\2$fs\3|p" \
        -e "s|^\($s\)\($w\)$s:$s\(.*\)$s\$|\1$fs\2$fs\3|p" $1 |
    awk -F$fs '{
        indent = length($1)/2;
        vname[indent] = $2;
        for (i in vname) {
        	if (i > indent) {
        		delete vname[i]
        	}
        }
        if ($2 == "image" && length($3) > 0){
            key="";
            for (i=1; i<indent; i++) {
            	if (vname[i]) {
         	    	key=(key)(vname[i])
	         	    if (i < indent - 1) {
	         	    	key=(key)(vname[i])("_")
	         	    }
        	    }
            }
            value = $3
            gsub("docker-reg.emotibot.com.cn:55688/", "", value)
            cmd = "curl -X PUT -d '\''" value "'\'' http://127.0.0.1:8500/v1/kv/release_versions/" key
            system(cmd)
	    }
    }' 1>&- 2>&-
}

add_deploy_info() {
    branch_name="$(git name-rev --name-only HEAD)"
    revision="$(git rev-parse --short HEAD 2> /dev/null | sed 's/\(.*\)/@\1/')"
    cmd="curl -sS -X PUT -d $branch_name$revision http://127.0.0.1:8500/v1/kv/release_versions/emotibot_deploy"
    r=`$cmd` 2> /dev/null
}
