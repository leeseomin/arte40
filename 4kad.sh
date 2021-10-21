parallel --no-notice rm -r ::: s1/* s2/* s3/* s4/* s5/* s6/* s7/* s8/* s9/* s10/* s11/* s12/* s13/*
parallel --no-notice rm -r ::: s14/* s15/* s16/* s17/* s18/* s19/* s20/* s21/* s22/* s23/* s24/* s25/*
parallel --no-notice rm -r ::: s26/* s27/* s28/* s29/* s30/* s31/* s32/* s33/* s34/* s35/* s36/* s37/* s38/*
cd s
for f in *\ *; do mv "$f" "${f// /_}"; done
cd s
parallel convert {} -resize 4000x4000 {.}.png ::: *.* 
rm *.jpg
rm *.JPG
parallel convert {} ../s25/{} ::: *.*
cd ..
cd s
parallel convert {} -modulate 100,120,100 ../s1/{} ::: *.* 
cd ..
cd s1
parallel gmic {} -fx_poster_edges 20,10,30,0,100,0,0,0 -o ../s6/{} ::: *.*
cd .. 
cd s6
for i in *.* 
do 
convert $i ../s/$i -alpha set  -compose pinlight -composite ../s19/$i 
done 
cd ..
cd s19
parallel gmic {} -fx_unsharp 1,2.25,10,2,0,1,1,1,0,0,0,50,50 -o ../s18/{} ::: *.*
cd .. 
cd s18
parallel convert {}  -set filename:new  ../s25/"%tad4" "%[filename:new].png" ::: *.*

