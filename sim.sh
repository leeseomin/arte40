parallel --no-notice rm -r ::: s1/* s2/* s3/* s4/* s5/* s6/* s7/* s8/* s9/* s10/* s11/* s12/* s13/*
parallel --no-notice rm -r ::: s14/* s15/* s16/* s17/* s18/* s19/* s20/* s21/* s22/* s23/* s24/* s25/*
parallel --no-notice rm -r ::: s26/* s27/* s28/* s29/* s30/* s31/* s32/* s33/* s34/* s35/* s36/* s37/* s38/*
cd s
for f in *\ *; do mv "$f" "${f// /_}"; done
cd s
parallel convert {} -resize 3000x3000 {.}.png ::: *.* 
rm *.jpg
rm *.JPG
parallel convert {} ../s25/{} ::: *.*
cd ..
cd s
parallel gmic {} -fx_polygonize 300,10,10,30,30,0,0,0,255,0,50,50 -o ../s6/{} ::: *.*
cd ..
cd s6
parallel gmic {} -fx_compose_vivid_color 1,0,1 -o ../s2/{} ::: *.*
cd ..
cd s2
parallel gmic {} -fill_holes 11,21,5,0,0,1 -o ../s21/{} ::: *.*
cd ..
cd s6
for i in *.* 
do 
convert $i ../s/$i -alpha set  -compose softlight -composite ../s7/$i 
done 
cd ..
cd s7
parallel gmic {} -fill_holes 11,21,5,0,0,1 -o ../s22/{} ::: *.*
cd ..
cd s
for i in *.* 
do
gmic -input $i -gtutor_fpaint 0.5,0.5,0,0,45,0.5,0.5,0.5,0 -o ../s1/$i 
done
cd ..
cd s1
for i in *.* 
do 
convert $i ../s/$i -alpha set  -compose softlight -composite ../s2/$i 
done 
cd ..
cd s2
parallel convert {}  -set filename:new  ../s25/"%tyfinger" "%[filename:new].png" ::: *.*
cd ..
cd s2
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s5/{} ::: *.*
cd ..
cd s5
parallel gmic {} -fx_unsharp 1,1.25,10,2,0,1,1,1,0,0,0,50,50 -o ../s17/{} ::: *.*
cd ..
cd s17
parallel convert {}  -set filename:new  ../s25/"%tyfinger_fl" "%[filename:new].png" ::: *.*
cd ..
cd s
for i in *.*
do
gmic $i -fx_custom_deformation "(w+h)/20*cos(y*20/h)","(w+h)/20*sin(x*20/w)",1,1,3 -o ../s15/$i
done
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%td_cartesian_transform" "%[filename:new].png" ::: *.*
cd ..
cd s15
for i in *.* 
do
gmic -input $i -gtutor_fpaint 0.5,0.5,0,0,45,0.5,0.5,0.5,0 -o ../s1/$i 
done
cd ..
cd s1
for i in *.* 
do 
convert $i ../s15/$i -alpha set  -compose softlight -composite ../s2/$i 
done 
cd ..
cd s2
parallel convert {}  -set filename:new  ../s25/"%tm3_finger" "%[filename:new].png" ::: *.*
cd ..
cd s2
for i in *.* 
do 
convert $i ../s17/$i -alpha set  -compose darken -composite ../s5/$i 
done 
cd ..
cd s5
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3d" "%[filename:new].png" ::: *.*
cd ..
cd s5
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s15/{} ::: *.*
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3d_flood" "%[filename:new].png" ::: *.*
cd ..
cd s5
parallel convert {} -flop  ../s6/{} ::: *.* 
cd ..
cd s6
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3a" "%[filename:new].png" ::: *.*
cd ..
cd s6
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s15/{} ::: *.*
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3a_flood" "%[filename:new].png" ::: *.*
cd ..
cd s5
for i in *.* 
do 
convert $i ../s6/$i -alpha set  -compose pinlight -composite ../s7/$i 
done 
cd ..
cd s7
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3c" "%[filename:new].png" ::: *.*
cd ..
cd s7
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s15/{} ::: *.*
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3c_flood" "%[filename:new].png" ::: *.*
cd ..
cd s6
for i in *.* 
do 
convert $i ../s5/$i -alpha set  -compose pinlight -composite ../s8/$i 
done 
cd ..
cd s8
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3b" "%[filename:new].png" ::: *.*
cd ..
cd s8
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s15/{} ::: *.*
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3b_flood" "%[filename:new].png" ::: *.*
cd ..
cd s8
parallel gmic {} -fx_vector_painting 9,0,50,50 -o ../s1/{} ::: *.*
cd ..
cd s1
parallel convert {}  -set filename:new  ../s25/"%tm3_finger5c" "%[filename:new].png" ::: *.*








