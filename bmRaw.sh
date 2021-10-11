echo "Dng converter that uses libraw"
echo "By Karoliina Salminen & Kate Alhola"
echo "Converting all files in a directory to tiff"
echo ""
mkdir dngs
for i in ./*.dng
do
echo "Task $i"
~/Downloads/LibRaw/bin/dcraw_emu -4 -T -H 1 -g 2.7 0 -m 19 -n 0 -o 0 -b 1.5 $i &
echo "Sleeping before next task"
echo ""
sleep 3
done
mv *.dng dngs/
mkdir graded
echo "All done."
echo ""
