
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
        
        load "data/4FJY.pdb", protein
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
 
        load "data/4FJY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4949,4950,4971,3430,3442,4972,4973,4974,4975,3431,467,910,468,3714,1067,1069,1039,1041,929,4488,4498,4501,4502,4504,4503,5134,3792,3793,3464,3743,3744,3745,3746,3747,3748,3749,5144,3472,3791,1022,5039,1028,1023,1027,1054,1056,1091,1092,1093,4970,4996,5003,5004,5007,3444,3443,1065,540,5037,5038,519,548,1024,482,483,498,496,5001,5095,5113,5114,5000,5002,4998,5127,5128,5131,5111,4911,4913,4914,4997,5076,5075,5077] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [5768,5865,5866,5869,5870,5871,5872,5896,5897,5861,5863,5864,5783,5251,5784,4680,4681,4642,4643,4644,4843,4626,4600,4679,4608,4612,4657,4658,4659,4599,5756,5760,5266,4614,4615,4631,4613,4841,4865,5206,4821,4822,4823,4664,4673,5120,5121,5123,5125,5205,5210,5224,5228,5230,5227,5222] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2245,3249,3251,1575,1579,1582,3248,6361,3238,3261,3250,3252,2659,2674,2894,2929,2930,2691,2692,2928,2731,3213,6304,3263,2926,6423,2664,2666,2670,6448,6421,6422,6452,6457,6328,6329,2246,2247,6451,2665,2673,2679,2680] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3703,429,445,447,448,3705,938,940,1190,3701,4033,4035,917,918,919,920,4508,4467,4468,4025,4059,4060,4061,1217,4024,4027,1219,4026,4028,4029,4531,4532,4051,444,446] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [5005,5007,5008,5009,5014,3440,3441,5006,5010,5046,496,497,495,3417,3418,3419,4984,3453,6280,3179,3455,6255,6257,3172,3176,3178,3386,3161,3163,3159,3439] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [4933,6345,5901,6380,6353,6378,6441,6396,5695,6321,6323,6439,5701,5703,5710,6442,5900,6465,6466] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [201,203,204,211,212,2122,2296,235,3905,193,183,2300,2304,2034,2038,2040,2298,3575,228] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [6387,2254,2227,6385,6386,2211,2218,2225,2255,2266,2267,2268,2265,2008,3826,4890,3854,3855,3864,3875,3844,3851,6357,6365,3526] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3011,3044,3277,3042,3293,2465,2486,2474,1310,1313,2983,1854,3010,3012,2981,3282,3283,1857,1861,1851,1863,2460,2461,2096,1845,3285] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [5278,5279,5313,5301,5311,5751,5752,6767,6738,6785,6787,6783,5371,5373,5739,5759,5758] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1440,1462,1681,1682,1458,1459,1985,1986,1996,1997,2216] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3886,3914,3870,3884,2291,2293,3574,2297,3878,3907,3911,2299,2303,3905,3902,3541,3550,3915] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        