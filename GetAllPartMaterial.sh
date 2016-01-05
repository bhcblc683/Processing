#!/usr/bin/env bash
awk '{
    if($0 ~ "加工对象="){
        split($0, a, ",")
        split(a[2], b, "、")
        for(i in b){
            c[b[i]] = 1
        }
        delete a
    } else;
}; END {
    for(i in c) print i;
}' /Users/kosei/Desktop/车削铣削.txt