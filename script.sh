echo "Programma poiska filov cherez hard link"
echo "Programma find v file.system hard link na danniy file and cout their name"
echo "Razrab: Tsoktoev Dorzho gr.717-1"
while :; do
echo "Name current catalog"
pwd
echo "Vvedite name file"
read filename
echo "Poisk po name file $filename"
find . -name $filename
if [ -f $filename ] ; then
echo "File naiden"
pwd $filename
else
echo "File ne naiden. Try again"
fi
find / -xdev -samefile $filename
echo "Vvedite Y chtobi exit ili N chobi povtorit"
read answer
case $asnwer in
Y) exit ;;
esac
done
