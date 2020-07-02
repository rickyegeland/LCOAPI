#!/usr/bin/env perl

while (<>) {
    s/"KEY2020B-010"/PROPOSAL_ID/;
    s/,"\w+":(null|false)//g;
    s/"windows":\[.*?\]/"windows":windows/;
    s/,"\w+":(null|false)//g;
    print $_;
}
