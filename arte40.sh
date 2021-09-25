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
parallel convert {}  -set filename:new  ../s25/"%tad5" "%[filename:new].png" ::: *.*
cd ..
cd s19
parallel gmic {} -fx_unsharp 1,2.25,10,2,0,1,1,1,0,0,0,50,50 -o ../s18/{} ::: *.*
cd .. 
cd s18
parallel convert {}  -set filename:new  ../s25/"%tad4" "%[filename:new].png" ::: *.*
cd ..
cd s
for i in *.* 
do 
convert $i /home/lee/cpux/logo/mon8.png -alpha set  -compose darken -composite ../s3/$i 
done 
cd ..
cd s3
parallel convert {}  -set filename:new  ../s25/"%tmon7" "%[filename:new].png" ::: *.*
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
cd s2
for i in *.* 
do
gmic -input $i -gtutor_fpaint 0.5,0.5,0,0,45,0.5,0.5,0.5,0 -o ../s1/$i 
done
cd ..
cd s1
for i in *.* 
do 
convert $i ../s2/$i -alpha set  -compose softlight -composite ../s3/$i 
done 
cd ..
cd s3
parallel gmic {} -fx_unsharp 1,1.25,10,2,0,1,1,1,0,0,0,50,50 -o ../s4/{} ::: *.*
cd ..
cd s4
parallel convert {}  -set filename:new  ../s25/"%tyfinger2_un" "%[filename:new].png" ::: *.*
# poly33 적용한 finger7
parallel convert {} ../s27/{} ::: *.*
cd ..
cd s22
for i in *.* 
do 
convert $i ../s4/$i -alpha set  -compose multiply -composite ../s9/$i 
done 
cd ..
cd s9
parallel convert {}  -set filename:new  ../s25/"%tyfinger17" "%[filename:new].png" ::: *.*
cd ..
cd s9
parallel convert {} -modulate 130,100,100 ../s10/{} ::: *.* 
cd ..
cd s10
parallel convert {}  -set filename:new  ../s25/"%tyfinger17a" "%[filename:new].png" ::: *.*
cd ..
cd s10
parallel gmic {} -fx_vector_painting 9,0,50,50 -o ../s1/{} ::: *.*
cd ..
cd s1
parallel convert {}  -set filename:new  ../s25/"%ttyfinger17a_v" "%[filename:new].png" ::: *.*
cd ..
cd s10
parallel gmic {} -fx_unsharp 1,1.25,10,2,0,1,1,1,0,0,0,50,50 -o ../s11/{} ::: *.*
cd ..
cd s11
parallel convert {}  -set filename:new  ../s25/"%tyfinger17a_un" "%[filename:new].png" ::: *.*
cd ..
cd s11
for i in *.* 
do 
convert $i ../s27/$i -alpha set  -compose screen -composite ../s2/$i 
done
cd ..
cd s2
parallel convert {}  -set filename:new  ../s25/"%tyfinger18" "%[filename:new].png" ::: *.*
cd ..
cd s19
for i in *.* 
do 
convert $i ../s11/$i -alpha set  -compose softlight -composite ../s2/$i 
done
cd ..
cd s2
parallel convert {}  -set filename:new  ../s25/"%tad7" "%[filename:new].png" ::: *.*
cd ..
cd s2
for i in *.* 
do 
convert $i ../s/$i -alpha set  -compose overlay -composite ../s1/$i 
done
cd ..
cd s1
parallel convert {}  -set filename:new  ../s25/"%tad7b" "%[filename:new].png" ::: *.*
cd ..
cd s1
for i in *.* 
do 
convert $i ../s11/$i -alpha set  -compose darken -composite ../s1/$i 
done
cd ..
cd s1
parallel convert {}  -set filename:new  ../s25/"%tad7k" "%[filename:new].png" ::: *.*
cd ..
cd s2
parallel gmic {} -fx_poster_hope 0,17,0,50,50 -o ../s22/{} ::: *.*
cd ..
cd s22
parallel convert {}  -set filename:new  ../s25/"%tad9" "%[filename:new].png" ::: *.*
cd ..
cd s22
parallel gmic {} -fx_jobs_colors 0,1,0 -o ../s1/{} ::: *.*
cd ..
cd s1
parallel convert {}  -set filename:new  ../s25/"%tad9a" "%[filename:new].png" ::: *.*
cd ..
cd s18
for i in *.* 
do 
convert $i ../s22/$i -alpha set  -compose pinlight -composite ../s26/$i 
done
cd ..
cd s26
parallel convert {}  -set filename:new  ../s25/"%tad10a" "%[filename:new].png" ::: *.*
cd ..
cd s18
for i in *.* 
do 
convert $i ../s22/$i -alpha set  -compose linearlight -composite ../s26/$i 
done
cd ..
cd s26
parallel convert {}  -set filename:new  ../s25/"%tad10b" "%[filename:new].png" ::: *.*
cd ..
cd s17
for i in *.* 
do 
convert $i ../s2/$i -alpha set  -compose screen -composite ../s3/$i 
done
cd ..
cd s3
parallel convert {}  -set filename:new  ../s25/"%tad7_a" "%[filename:new].png" ::: *.*
cd ..
cd s19
for i in *.* 
do 
convert $i ../s11/$i -alpha set  -compose pinlight -composite ../s13/$i 
done
cd ..
cd s13
parallel convert {}  -set filename:new  ../s25/"%tad8" "%[filename:new].png" ::: *.*
cd ..
cd s21
for i in *.* 
do 
convert $i ../s4/$i -alpha set  -compose multiply -composite ../s9/$i 
done 
cd ..
cd s9
parallel convert {}  -set filename:new  ../s25/"%tyfinger7" "%[filename:new].png" ::: *.*
cd ..
cd s9
parallel convert {} -modulate 130,100,100 ../s10/{} ::: *.* 
cd ..
cd s10
parallel gmic {} -fx_unsharp 1,1.25,10,2,0,1,1,1,0,0,0,50,50 -o ../s11/{} ::: *.*
cd ..
cd s11
parallel convert {}  -set filename:new  ../s25/"%tyfinger7a_un" "%[filename:new].png" ::: *.*
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
parallel convert {} -flop  ../s6/{} ::: *.* 
cd ..
cd s6
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3a" "%[filename:new].png" ::: *.*
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
parallel gmic {} -fx_vector_painting 9,0,50,50 -o ../s1/{} ::: *.*
cd ..
cd s1
parallel convert {}  -set filename:new  ../s25/"%tm3_finger5c" "%[filename:new].png" ::: *.*
cd ..
cd s1
for i in *.* 
do 
convert $i ../s13/$i -alpha set  -compose screen -composite ../s5/$i 
done 
cd ..
cd s5
parallel convert {}  -set filename:new  ../s25/"%tm3_finger5h" "%[filename:new].png" ::: *.*



