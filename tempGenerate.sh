if [ ! $1 ]; then
    start=36.3
else
    start=$1
fi
if [ ! $2 ]; then
    end=37.3
else
    end=$2
fi
while true; do
    temp=`seq ${start} .1 37.3 | shuf | head -n1`
    while [[ ${temp} >  '37.3' ]]; do
        temp=`seq 36.3 .1 37.3 | shuf | head -n1`
    done
    while [[ ${temp} < '36.3' ]]; do
        temp=`seq 36.3 .1 37.3 | shuf | head -n1`
    done
    echo ${temp}
done
