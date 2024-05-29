
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/4F6W.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/4F6W.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [288,289,290,228,231,233,266,267,268,430,431,533,789,790,792,793,794,1371,1375,433,263,264,265,791,416,637,638,1267,1268,798,815,818,2696,2693,2694,2695,1244,1381,1385,1386,1243,877,859,1372,1374,844,845,846] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4024,2761,2764,2775,2779,4374,2780,2781,2782,4375,2765,2766,2794,2797,4018,4021,4062,4029,4065,4064,4069,4070,4075,4074,4073,4376,4380,4381,4382,4111,4383,4373,4032,4099] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1230,1414,863,1436,1438,1413,861,1708,1664,1709,931,1449,1239,1450,1231,1244,1240,864,866,856,858] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1177,522,1190,1182,1188,1376,1377,1379,1194,1196,1369,1370,1368,1372,1389,521,1133,1134,562,526,530,561,529,554,589,630,638] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4316,2938,2966,4312,4319,3041,3044,4306,4309,3081,3114,3080,3070,3039,3040,3076,2905,2906,4348,4712,4714,3087,3088,3083,3085,3086,4713,4684,4687,4688,4689] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3830,3457,3458,3459,3472,3473,3775,4899,4912,4913,3819,3820,3773,3788,3789,3783,4872,4871,4873,4876,3765,3784] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2302,2550,2306,2291,2292,2261,1680,2262,1025,991,992,2555,2566,2520,2522,990,1014,1015,995,993] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3341,3343,3379,3428,3339,3349,3347,3102,3111,3115,3101,3110,3142,3104,3074,3151,3352] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1900,1901,2392,1893,2352,1946,1947,1948,1949,1904,1905,1913,1914,2379,2384,2385,2390,1897,2373,2347,2349,2178,2383] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1977,1980,2405,2406,1958,2013,2014,1479,1480,1513,1516,2002,2414,2399,1976,1531,1556] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [195,194,300,301,198,765,440,441,442] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2639,2659,2669,2670,2658,2611,2616,1008,2612,2613,2634,985,986,923] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1316,644,645,662,801,660,661,390,391,611,1314,1315,1358,603,802] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        