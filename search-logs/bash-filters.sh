
# to lowercase, and delete all longer than 80 symbols

export PERL_UNICODE=SDL
cat full.txt | perl -ne 'print lc $_;' | egrep -v '.{81,}' > full-lc.txt

# Unique

cat full-lc.txt | uniq > unique-lc.txt

# Words with dashes

cat unique-lc.txt | egrep -o '[^ -]+-[^ -]+' | sort | uniq > dashed-words.txt

# Stat
cat full-lc.txt | sort | uniq -c | sort -nr > stat-lc.txt
