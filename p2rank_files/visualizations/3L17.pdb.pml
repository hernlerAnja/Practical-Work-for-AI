
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
        
        load "data/3L17.pdb", protein
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
 
        load "data/3L17.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [475,3700,3701,476,4957,3416,3417,3422,3423,4958,3418,3451,4981,3421,3779,3780,3730,4494,4496,4497,5152,3731,3732,3733,3734,3735,3736,5150,4506,4510,4511,3778,4924,4979,4982,4983,5119,5121,5122,5136,5139,4919,4921,4946,5142,5006,5008,5009,5005,1133,1156,1157,1159,5010,5103,5084,4978,4976,5004,5011,5012,1092,1093,1094,3397,5045,5047,5046,1128,1131,1118,1119,1120,1122,3429,3430,3431,5015,3398,548,5073,528,546,556,5079] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5852,5854,5260,5869,5871,5791,5792,5872,4689,5259,5873,5877,5878,5879,5880,4873,5768,5766,5767,5273,4622,4623,4620,4849,4851,4667,4633,4634,4850,4888,5213,5218,4831,5214,5229,5230,5131,5236,5238,5232,5235,4917,5133] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [455,982,983,984,985,986,1004,437,1006,1256,1257,4475,4476,3687,3688,3690,3692,4020,4021,4022,4474,1293,1294,438,4515,4520,4521,4516,4517,4518,454,994,456,3694,3699,3701,4012,4013,4015,4048,4011,4014,4047,4540,1283,1285] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [2646,2653,2647,2657,2879,2880,2885,3248,3250,2917,2717,2678,2679,2913,2916,3200,6304,2881,3197,3231,6361,3225,3237,3238,3236,3239,3235,6413,6415,6417,6329,6451,6328,6449] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [6365,6371,6372,6375,6376,6381,6382,4898,2295,6383,2282,6388,4880,4879,4881,3835,3813,3838,3841,3842,3831,2293,2294,3860,3862,3512,3513] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5902,5904,6442,5896,5718,5897,5703,5711,6468,6321,6323,6345,6353,6378,6379,6352,6439,6441,6443,4941,5884,4905,4908] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [6279,3165,3440,3442,3163,6278,3159,3427,3428,5015,5016,505,506,3404,3405,3406,504,3150,3157,3166,5022,5014,3156,3146,3158,6254,6256,5054] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [2327,2331,2336,191,220,197,201,219,209,211,212,3892,233,236,2067,2063,2151,2324,2325,2323,3562] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [5752,5287,5315,5318,5320,5321,5751,6766,5760,5284,5286,5314,5322,5358,5361,6780,5380,5381,6747,5767] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [5223,5220,5221,5222,5227,5245,1135,4800,4810,4815,4809,4805,4501,1136,976,973,975,1107,4509,4510,4511,4512,4530,4531,4733,4496] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [5115,5237,5114,5238,5242,5103,5835,5590,5591,1133,1159,1167,1165,1166,5832,5822,5823] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [973,975,1106,1107,956,961,4768,1203,4766,4770,1201,1202,4765,965,966,4531,1180,4769,4778,1176,1177,1178,1179,1184,1204,1198] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [2304,2303,1578,2264,2270,2272,2310,1608,1609,1632,2312,1591,1627,2299,1956,1972,1973] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5081,5082,5617,5621,5622,580,542,544,5085,5099,5589,5591,1154,5584,5587,5588,5579,5618,5620,5581] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [1912,3264,2998,3027,3029,3031,3281,2489,2973,2974,1909,2997,2999,2970,2968,1915,1919,1921,2125,2484,1903] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [794,797,798,1011,820,898,901,904,1023,1024,1035,1033,1034,1020,1021,929,931,917,412,900,899] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [1012,1013,1015,795,1054,1056,813,938,1081,649,650,651] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2037,2240,2254,2258,2259,2295,2301,2281,2282,6388,6392,2292,3860,3862,3863,3838,3831] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [5951,5954,5997,5681,5648,5649,5864,5843,5662,5635,5647,5657,5658,5633] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        