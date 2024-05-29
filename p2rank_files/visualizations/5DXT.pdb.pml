
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
        
        load "data/5DXT.pdb", protein
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
 
        load "data/5DXT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6282,6276,6281,6168,6284,5751,6193,5067,5132,5049,5776,6194,5732,5775,5684,5685,5690,5303,5703,5706,5709,5734,5702,5701,5385,5386,6273,6277,6278,5607,6275,5322,5323,5359,5387,6283,5686,5110,5302,5078,5079,6297,5340,5343,5347] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [3862,4229,4230,4179,4180,4181,4182,4183,4184,3863,4147,3864,4148,522,4936,4937,4938,4146,3866,3868,3901,5424,3865,5450,5600,5601,5617,4930,5611,5614,5626,5594,4924,4926,5393,5391,5413,5415,5419,5420,5423,5414,5452] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [523,1196,1198,539,1193,1234,522,537,3840,538,1225,1230,1231,1256,3862,4184,3863,3873,5449,5450,5447,5485,5486,5487,3869,3850,3841,5514,5515,5525,3866,5424,3865,5600,5601,5611,5594,1235,1263,1264,1265,5596,5451,5452,5476,5477,5478,5578,1257,5479,5569,5420,5423] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [4139,4450,4448,4480,489,4140,4429,4444,4482,4440,4441,1394,1411,1414,452,453,400,1423,478,480,387,390,391,4452,4902,4907,4908,4909,4479,4481,488,1407,486,4942,1077,498,500,1074,4969,1399,4892,4433,4436,365,1426,1427,1429,1441,366] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [2504,2382,2501,2258,2260,2263,2264,2500,2257,2496,2497,2267,3983,2495,2508,2369,2370,2509,2368,234,3995,232,233,2294,2295,2301,2291,3997,2288,2342,2343,2507,218,4326,4006,4008,4007,2303,216,215,217] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [2492,2476,2482,2237,2466,2483,2486,4303,4304,2410,2404,3967,6821,6827,2477,3956,6829,2432,2433,2434,2234,2417,6879,6880,2465,2480] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [5695,4959,4960,5242,5250,5252,5241,1276,1278,1235,1264,1085,1086,1200,1203,1205,1207,1069,1241,4938,523] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [5643,4271,5646,4219,5637,4555,4556,4581,4277,4275,122,4247,128,130,4246,4524,4242,4267,4580,5666] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [4279,4280,5366,5368,4251,5645,6836,6837,6839,4285,4286,4288,4262,5652] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4334,4327,4331,4008,4322,218,4326,4001,4292,2524,2496,3983,4335,3991,2504,2507,4301] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [515,4120,466,467,468,470,444,445,377,378,388,1126,4131,4103,3833,4121,4122] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [4935,5692,5695,4957,4959,5277,5252,5253,4927,4929,4915,5693,5694,5699,5718,5266,5279,5282,5272] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2831,2803,2828,2833,2834,3236,3257,2937,2940,2827,3269,3267,2959,2954,2958,2960,3265,3264,3270,2985] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3934,4261,4259,4253,4225,5364,5365,5366,5633,5363,5395,6817,3895,3897,3899,3900,4226,4227] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3459,3456,3431,3447,3450,2795,2798,2799,2819,2829,2832,3227,2922,2934,2935,2936,2852,3480] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [7153,7150,7169,7149,6576,7171,6528,7182,6413,6459,6460,6574] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3206,3208,3248,3247,2972,2976,3018,3021,3048,2913,2932,2938,2941,2942,3238] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        