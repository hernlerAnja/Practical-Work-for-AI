
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
        
        load "data/5UBR.pdb", protein
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
 
        load "data/5UBR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5186,5188,6070,6075,6076,6069,5407,5485,5486,5487,5405,5409,6065,5404,5406,6067,5510,5148,5160,5141,5142,5144,5122,5123,5187,5124,5103,5104,5491,4933,5504,5507,5508,5530,5547,5985,5986,5960,6068,4911,4885,4886,4874,6089] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3692,3695,4009,4011,4012,4013,4014,3976,3977,3693,3694,3978,4743,4744,4745,5251,497,4010,4059,4060,3731,5228,3724,3729,3696,3698,5225,3730,5192,5216,5220,5221,5224,5415,5418,5252,5253,5395,5402,4733,5425,5427,5412] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [6220,6264,6394,6366,6368,6401,6263,6330,6922,6892,6919,6920,6921,6423,6424,6860,6861,6890,6891,6894,6901,6404,6942,6867,6433,6435,6918,6331,6939,6940,6941] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2390,2143,2384,2389,3813,211,212,2164,2167,2171,2177,2179,3804,4164,4165,2392,2396,2254,2395,4131,4152,4156,196,194,195,4161,3838,4157,4136,4122,2411,2136,2134,2139,2140,2155] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [461,3969,463,464,473,475,1352,1343,1346,4714,4715,1036,4716,4776,3970,4280,4270,4310,4312,4271,4311,1359,4266,1372,1356,4282,4709,4309,4699] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [5444,4407,4352,4378,4379,4382,5447,5438,5442,4374,4406,4074,4076,4077,4354,4072,4049] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [512,513,514,1209,1210,1179,1185,1186,1189,5281,5316,5282,5285,5287,5326,573,5248,5250,5277,5278,5279,5280,5370,5319,5317,5355,1218,5397] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3692,3695,3693,5251,1153,1151,3703,5250,3696,3698,5225,5252,5253,5395,5402,5220,5221,5224,5412] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [6610,2380,4134,2376,2377,2282,4133,2289,2368,2373,2371,2357,2356,2113,6660,2304,2305] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3808,3848,3851,3826,3828,3842,2174,2196,3860,1974,1975,3534,3535,3533] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1044,1045,1160,1162,1028,498,4744,4745,5042,5043,5041,4766,4767,5052] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2724,2725,2793,2794,2795,2809,2808,2702,2703,2704,2705,3318,2674,2676,2677,2696,3294,3068,3297,3269,3285,3286,3288,2678,2671] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3516,1692,3519,2386,1994,1995,1996,3815,2368,2375,2361,2366,2367,2370,3493,3490,3492,3795,3792,3811] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        