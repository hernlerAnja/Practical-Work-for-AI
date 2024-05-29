
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
        
        load "data/5S7V.pdb", protein
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
 
        load "data/5S7V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3508,3511,3512,3513,3514,2560,2562,2564,2690,2691,2416,2463,2464,2465,2411,3435,2414,3014,2984,2986,2988,2412,2413,3506,2726,2810,3434,3507,2556,2948,2952,2966,2967,2971,2548,2725,3407,3406,3409,3017,3021,3022,3050,3379,3395,3396,3699,3418,3700,2990,2993,3003,2441,2604,2443,3677,3678,3679,3680,2434,2439,2440,2442,2444,2617,2619,2621,2645,2646,2435,2438,3686,3693,3694,3695,3709,3701,3710,4214,3706] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1097,713,748,1098,1206,1209,1282,1070,1281,252,1086,1087,1109,1301,122,294,296,128,123,125,127,295,1203,629,705,651,236,680,671,673,644,643,147,148,149,96,97,99,101,98,250,248,625,244,1202,501,1128,1201,1130,712,708,677,1296,1297,1288] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3793,2252,2280,4245,4246,4247,4248,917,885,886,887,3792,915,476,466,469,1175,855,857,888,862,1174,1176,859,934,942,933,935,936,458,460,944,970,986,988,443,4271,4311,4280,4310,4236,4238,3778,3779,3772,4272,4273,3780,2306] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3765,3767,3768,3790,3687,3691,3688,3684,3690,3694,3738,3740,3697,4237,4239,3369,3660,3675,3808,3819,3807,3641,3871,3873,3642,3900,3365,3368,3364,3724,3734,3792,3791] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3037,3039,3041,4138,4139,3716,3717,3729,3700,3402,4012,3718,3408,3403,3409,3410,3411,3394,3396,4221,4222,3701,3710,4214,4219,4208,4209] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1376,1506,1342,1346,1277,1286,1289,1290,1292,1293,1348,1296,1416,1477,1479,1373,1375,1835,1415,1398,1431,1056,1059,1060,1055,1064,1069] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [730,732,1099,1100,1101,1102,1086,1087,125,127,1093,1610,728,1085,1339,1302,1324,1325,1326,1737,1805,1337,1745,1736,1738,1820,1807,1799,1806] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2239,2251,2245,2250,2234,2237,2238,2240,956,957,958,960,1485,1487,1488,1483,1489,1484,2244,1521,971,968,934,1495,1497,1458,1490,2217,2228] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [454,484,462,464,1147,1145,1146,1143,1148,502,503,661,686,653,655,657,659,663,685,683,668,1188] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [4623,4629,4633,4634,4635,4640,4632,4644,4612,4647,3273,3274,3286,3288,3889,3891,3892,3879,3853,3854,3855,3856,3277,3881,3882,3883,3915] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [190,191,32,54,192,193,194,637,34,523,195,196,197,230,529,636] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [872,870,1137,759,760,790,1151,1164,1165,703,805,1167,836,838] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2849,2850,2852,2365,2366,2369,2960,2941,2382,2383,2936,2938,2939,2940,2942,2943] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4675,3234,3254,3257,3259,2778,2780] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1216,399,400,1215,1199,1202,1192,498,501,1198,497,490,365] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        