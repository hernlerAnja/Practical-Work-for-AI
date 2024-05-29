
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
        
        load "data/5S7J.pdb", protein
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
 
        load "data/5S7J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2470,2471,2472,2474,2473,2475,2445,2447,2494,2495,2496,2442,2443,2444,2587,2591,3425,3427,3397,3684,3685,3529,3530,3532,2714,3526,3525,3413,3414,3436,2593,2595,3424,2713,2974,2978,3699,3700,3704,3705,2469,2635,3682,3683,2644,2645,3691,3453,2836,2997,3452,3524,2835,3019,2579,3016,2992,2993,3047,3048,3043,3076,3040,3029,3010,3012,3014] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1123,760,105,110,259,260,261,305,1232,1302,1303,1304,303,133,135,137,131,132,134,136,106,108,107,257,639,643,156,157,158,253,675,677,245,1224,1132,724,1120,1121,1122,725,720,373,1225,1226,1229,1231,1151,717,1153,684,658,510,657,1093,1310,1110,1323,1319,1318,1109] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [469,900,930,932,485,870,872,874,957,959,985,1011,467,951,1009,1010,475,478,1198,1197,1199,452,949,987,950,948,991,2316,4248,4249,4250,3777,4271,4272,4273,4274,4275,4313,902,4312,3796,3797,3798,4236,4237,4238,4239,4240,4241,4247,4245,4278,4282,4283,4235,3783,3784,2288,901,2342] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3689,3693,3695,3680,3770,3772,3795,3797,3745,4237,4239,3665,3812,3646,3823,3824,3902,3387,3386,3382,3696,3552,3383,3773,3729,3739,3743,3699,3873,3875,3647,3813] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1438,1082,1083,1502,1398,1504,1531,1364,1368,1314,1370,1078,1087,1092,1315,1318,1308,1311,1312,1395,1437,1453,1397,1868] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3063,3065,3067,4140,3723,4141,3425,3426,3427,3428,3429,2471,2473,3715,3721,3722,3734,3412,3704,3705,3414,3421,4224,3706,3420,4014] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1110,1324,1125,1839,744,1838,1108,1361,1359,1635,742,1778,1346,1347,1348,1769,1770,1771,1832,1853,1840,1116,1122,740,1123,1124] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [975,1512,1514,1510,1513,2270,2276,1546,973,993,2280,1520,1522,2264,1484,1485,1483,2275,2273,2281,2274,2287,2253] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4623,4619,4628,3300,4613,4616,4617,4618,3881,3856,3857,3883,3884,3885,3288,3891,3893,4596,3917,4607,3289,3291,4631,3894,3855] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [851,853,771,772,805,885,1190,1160,1188,1174,1187,820,887,714] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [665,687,689,672,667,493,463,471,473,1170,1166,1168,1169,1171] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2964,2967,2397,2400,2969,2415,2396,2413,2875,2876,2878,2986,2968] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [532,199,201,239,200,63,202,203,204,205,206,38,650,538] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4659,3248,3273,2801,2803,3268,3266] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [499,506,374,658,507,510,1215] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        