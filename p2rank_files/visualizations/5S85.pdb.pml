
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
        
        load "data/5S85.pdb", protein
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
 
        load "data/5S85.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2428,2430,2431,2432,2433,2454,2549,2452,2453,2405,2400,3640,3490,3641,2665,3488,2666,3487,2553,3394,2551,2545,2933,2929,3355,3660,3372,3385,3382,3410,3411,3006,3007,3035,2999,3002,3383,3483,3484,3482,2974,2947,2952,2537,2965,2403,2967,2401,2402,2969,2701,2785,2948,2984,2971,2424,2427,3639,2595,2596,2597,3647] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [349,1200,1201,1206,623,237,1199,1204,235,133,486,1095,692,696,697,732,1128,689,84,113,132,134,233,86,81,82,1107,1207,1068,1084,1085,1285,1280,1281,1096,1097,1265,1266,1272,108,112,107,110,279,280,281,221,637,642,664,661,655,657,229] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [451,454,461,1172,1174,1173,2285,902,904,872,874,842,844,846,849,920,921,922,443,445,929,931,4206,4207,4209,957,973,975,428,4197,4199,4208,4232,4241,4272,4271,3752,3753,2257,3754,3741,4233,4234,2311,3733,3739,3740] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3724,3728,3768,3726,3753,3751,3780,3649,3651,3701,4198,3621,3636,3608,3729,3861,3695,3341,3344,3345,3340,3834,3769,3832,3605,3606,3655,3652,3658,3699] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1330,1273,1274,1332,1828,1382,1270,1276,1277,1067,1280,1058,1261,1499,1053,1062,1326,1057,1461,1463,1400,1357,1359,1360,1399,1415] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3662,3671,3661,3690,3677,3678,3679,4099,4100,3370,3372,3384,3385,3386,3387,3379,3022,3024,3378,3973,3026,4170,4183] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1097,1098,712,714,716,1729,1099,1100,1083,1084,1085,1286,112,110,1800,1813,1308,1309,1310,1730,1799,1321,1323,1738,1595,1091] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [944,1473,1479,1481,945,947,2239,2242,2244,2245,2249,2250,1514,2233,1469,1471,1442,1490,1488,2222,1483,959,958,2243,2255,2256] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [4592,4582,4585,4586,4587,4588,4597,4600,4576,3245,3258,3260,3843,3814,3852,3853,3815,3817,3844,3876,3249,3840,3842,3850,4565,3247,3246] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [743,777,744,1135,781,792,859,687,823,825,857,1163,1165] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [631,28,48,178,179,175,176,177,508,181,215,180,182,514,630] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [469,645,647,644,667,669,449,1145,1141,1143,1146,447,439,652] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [475,1213,384,385,1214,1190,1196,483,482,1200,350,486,638] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        