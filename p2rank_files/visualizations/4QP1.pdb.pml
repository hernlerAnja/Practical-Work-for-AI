
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
        
        load "data/4QP1.pdb", protein
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
 
        load "data/4QP1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [995,2485,2510,2530,2534,2509,2532,2533,962,964,994,2486,2488,2476,2483,4612,4613,1234,4632,4838,4836,4840,1002,1028,1029,582,1030,2540,1004,571,1243,573,574,575,4601,4603,4638,4639,4640,4635] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3624,3983,4009,4084,4008,3596,3026,2974,2975,2972,3653,2973,3024,3025,3597,3613,3612,3611,2988,2991,2995,2987,2976,3138,3139,3140,3141,3142,3575,3572,3580,3125,3124,4083,4090,4091,4089,3992,4092] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [5416,5396,5399,5406,5414,5422,3308,5382,5395,3270,3304,3306,3307,5462,5504,5529,5417,5418,3273,3277,3278,3280,4127,5428,5430,3275,3314,3316,4132,4138,3242,5431,5433,5434,5445,5446,5423,5427] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [181,766,1276,1277,1282,331,332,482,788,1200,1274,1275,1199,802,803,804,843,815,844,787,163,164,316,216,217,215,1183,1280,1174] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4223,4205,4207,4209,4344,4212,1221,1224,1229,4619,4621,4623,4624,4620,1223,4622,4815,4816,4352,4360,1230,938,4259,4384,4234,4242,4253,4235,4317,4257,4347,4354,4350] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1276,1277,1282,331,332,333,482,441,195,196,197,453,181,185,186,480,481,1275,348,1280,443,1296] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [4792,4781,4790,4370,4371,4372,4333,4336,4337,4363,5110,4181,4377,4382,4184,4410,4155,5125,5126,5124,5133,5135,5136,5119,5104,5108,5113,4409,4378,4796,4798] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [889,890,4246,4248,3254,4245,4247,908,3955,4114,4250,4113,4251,3252,3218,2992,2993,2994,2995,905,3225,3227] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1508,1805,1809,1449,1450,1535,1401,1408,1409,1412,1398,1399,1400,1545,1810,1812,1814,1404,1402,1541] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3250,3252,3262,4090,4091,4105,3290,2994,2995,3140,3142,3159] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3730,3767,3768,3770,5278,5280,5282,3771,3773,4045,3747] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3985,3639,3641,3643,3678,4305,4307,4516,4295,3968,3969,3970,3979,4271,3972] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3955,4092,4113,3254,3250,3252,4091,4105,2992,2995] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3741,3694,4028,4033,4034,4037,4038,3661,3784,3785,4016,3660,4014,4029] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1719,2202,2205,892,3002,3004,3227,3229,2996,2997,889,890] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        