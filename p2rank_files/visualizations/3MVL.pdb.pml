
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
        
        load "data/3MVL.pdb", protein
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
 
        load "data/3MVL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [542,579,580,387,545,1334,1335,277,278,243,279,234,236,238,239,242,569,657,1327,658,834,372,851,1326,229,231,838,850,857,852,670,824,821,823,384,816,815,817,819,1224,874,877,1339,1328,1247,868,866,867,870,1357] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [2970,4068,4069,3580,3593,3595,3598,3966,3970,3989,3610,3613,3616,3617,3619,3609,3612,3020,3113,3114,2971,2972,2973,3399,3574,3575,3576,4077,2985,4076,3019,3021,3126,3129,2980,2981,2978,4070,4081,3130,3287,3322,3321,4099,3284,3557,3558,3559,3561,3412] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4444,4454,4574,4576,4842,4852,4452,4538,4563,4565,4415,4840,4804,4803,2477,4562,4843,4832,1136,1140,1141,1142,1148,1149,1150,1151,2480,2482,2483,2474,4542,2508,4428,2500,2504,2505,4424,4462,4463,4434,4439,4441,4423,4414] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1552,1127,1549,1551,1560,2294,2292,2293,2304,1099,1101,4461,4462,4459,4466,4467,4460,4541,4474,4508,1150,1134,4542,1137,2458,1097,1133] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1311,842,1310,844,647,659,660,661,663,609,613,617,576,603,666,678,2724,2725,620] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3650,3697,3699,3729,3731,3727,3728,3730,3732,4027,3647,3625,3626,3649,3651,3995,4000,3671] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3667,3642,3662,3669,3672,3673,2259,1521,1523,1907,2256,1911,1905,1908,1909,1910,2268,1912,3641,3640] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1285,1258,905,929,908,909,1253,957,986,987,988,989,1024] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [643,1015,1017,1051,1293,1077,2432,635,1078,1079,2436,642,1043,2387,1041,2390] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [5134,3785,5129,5132,3757,3793,3819,3385,3384,3377,4035,4036,5178,5120,5127] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [690,695,698,705,708,684,685,686,153,330,170,172,17,18,34,2677,2718] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4051,4052,4053,3420,3585,3586,3401,3402,3403,3405,3408,3389,3362,3370,3351,3354,5466,5467,3359] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2759,2760,2895,3427,3428,2912,2914,5460,3440,3447,3450,3437,3432] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4155,4169,4436,4132,3634,4392,3635,3663,3664,4157] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4246,4978,4979,4557,4525] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        