echo "Test">out.txt
line=1
if [ -f ./sample.txt ]
then
  while read -r LINES
  do
    if ((line!=0))
    then
      echo -e "$line:" $LINES>>"out.txt"
    fi
    ((line++))
  done < "sample.txt"
else
  echo "False">>out.txt 
  echo "File doesn't exist"
fi