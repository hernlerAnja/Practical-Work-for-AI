
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
        
        load "data/4QP6.pdb", protein
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
 
        load "data/4QP6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [172,185,186,195,1274,1275,331,332,333,1276,766,481,482,439,440,196,197,448,453,350,788,1199,1200,787,815,844,215,216,217,330,316,160,164,1183,1280,1281,1282,1283,1277,1296,441,443,1175,1174] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [3966,3967,3992,4067,3991,3607,3635,3636,2954,2955,3558,3107,3108,3563,3574,3594,3595,3596,3580,3581,3579,4068,4066,2974,2970,2971,3007,3009,3008,2957,2959,4072,2978,3975,3123,3121,3125,2977] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [994,573,574,575,1028,1029,1030,2464,2443,962,964,1002,1234,1235,4588,4727,582,995,2415,2439,2440,2416,2413,2418,4559,4568,4569,4594,2406,4591,4586,4584,4585] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [851,932,4179,1230,884,4184,4191,885,1229,4173,4174,4327,4328,1221,1223,4213,4215,4303,4310,4209,4574,4575,4576,4577,4579,4300,4306,4307,4308,934,4214,938] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1474,1481,1486,1488,1482,1487,1475,1507,1508,1361,1513,1514,1553,1525,1530,1384,1135,1136,1522,1523,1520,1519,1521,1554,1394,1400,1398] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3750,3751,3756,5191,5193,5195,3754,3753,3755,3713,3730,4028] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [4319,4320,4709,4767,4769,4686,4687,4692,4684,4685,5022,5024,4614,4647] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3324,5297,4121,5295,3258,3297,3286,3287,3321,5317,3290,3291,5315,3260,5309,5313,5308,3256] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5318,3290,3291,5316,5322,3260,3262,3263,3253,3254,3256,5347,5374,5417,5442,3225,3221,5334,5330] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4245,4247,4246,4248,4249,4250,4251,3953,4227,3955,3622,3624,3626,4261,923,924,925,4236,4554] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1649,899,890,892,894,1666,3210,3212,3211,2987,2985,4205,2132,2135,2133,2983,2979,2980,3237] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2265,1903,1904,2275,2276,1902,1512,1511,1919,2266,1476] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1433,1445,1447,1684,1435,1637,1685,830,1171,1176,1161,832,834,869,1168] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [3756,5191,5193,3754,5186,5188,5237,3786,3820,3367,3821,3822,5213] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2967,2831,2968,2999,2969,2991,2992,2995,3000,3132,3133,2852,2835,3131,3143,3147,3148,2134,2854] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [1779,2251,1778,1977,1812,1987,1989] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        