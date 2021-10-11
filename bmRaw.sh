# Script extracted from: http://karoliinasalminenphotography.blogspot.com/2013/12/blackmagic-cinema-camera-libraw.html
# For the purposes of analyzing the dcraw_emu parameters
echo '''
Analysis of the dcraw_emu parameters
    dcraw_emu -4 -T -H 1 -g 2.7 0 -m 19 -n 0 -o 0 -b 1.5 $i 
Params:
    -4          Linear 16-bits
    -T          Write TIFF with metadata
    -H 1        Leave highlights unclipped in various shades of pink. | try -H 3+ highlight reconstruction like https://www.cined.com/red-komodo-6k-lab-test-dynamic-range-and-latitude-test/
    -g 2.7 0    Gamma curve [power] [toe_slope]
    -m 19       number_of_passes after interpolation
    -n 0        noise_threshold
    -o 0        Output colorspace: 0 Raw color (unique to each camera) 
    -b 1.5      Brightness: Divide the white level by this number
    $i          input file
'''
# Biginning of the script
echo "Dng converter that uses libraw"
echo "By Karoliina Salminen & Kate Alhola"
echo "Converting all files in a directory to tiff"
echo ""
mkdir dngs
for i in ./*.dng
do
echo "Task $i"
/usr/bin/dcraw_emu -4 -T -H 1 -g 2.7 0 -m 19 -n 0 -o 0 -b 1.5 $i &
echo "Sleeping before next task"
echo ""
sleep 3
done
mv *.dng dngs/
mkdir graded
echo "All done."
echo ""
