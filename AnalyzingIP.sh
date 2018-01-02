find /media/sf_linux/ -name '*.*' -o -name '*.sh' >Filenames.txt;
for file in $(cat Filenames.txt); 
do 
grep -E -o --exclude=IPoutput.log "(25[0-5]|2[0-4][1-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" $file >>IPoutput.log
done
sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n IPoutput.log