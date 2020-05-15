#

set list=`cat $argv[1]`

foreach target ($list)

    set config=$target".json"

    cat submit_head.py > tmp.py
    echo -n "requestgroup = " >> tmp.py
    cat $config >> tmp.py
    cat submit_tail.py >> tmp.py

    python3 tmp.py
    rm -f tmp.py

end
