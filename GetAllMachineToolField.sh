#!/usr/bin/env bash

awk '{
		if($0 ~ "机床=机床名称") {
			m = split($0, a, ",")
			sub("机床=", "", a[1])
			for(i in a) {
				machine[a[i]] = 1;
			}
			delete a
		} else ;
	};
	END {
		for(i in machine) print i;
	}' ./车削铣削.txt

#之所以写两遍而没用循环是因为可以减少在变量命名上的纠结

awk '{
		if($0 ~ "刀具=刀具名称") {
			m = split($0, a, ",")
			sub("刀具=", "", a[1])
			for(i in a) {
				machine[a[i]] = 1;
			}
			delete a
		} else ;
	};
	END {
		for(i in machine) print i;
	}' ./车削铣削.txt