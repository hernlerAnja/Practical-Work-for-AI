
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
        
        load "data/6B2E.pdb", protein
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
 
        load "data/6B2E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5452,5454,5341,5326,5330,5331,4772,4773,4774,5342,5343,2418,2419,2422,2423,2424,2427,2428,2431,6346,6353,6354,6357,6361,6364,5962,5332,5851,5428,5435,5436,5438,4607,5439,4143,4128,4129,4130,4131,4137,4138,4139,5977,5978,5976,4770,4904,4781,4897,4899,4913,4900,2430,4765,4766,4777,4758,5969,5970,5961,5467,5469,5470,5468,6347,6348,5430,5453,5474,5476,5471,4150] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [6163,6154,5984,5989,5990,6156,6165,5961,6182,6161,6150,6158,2435,5979,5981,2451,2456,2457,5977,5976,6341,5942,5943,6353,6356,6357,6370,6361,6367,5856,5962,6198,6200,6210,2425,2421,2423,2424,6218,5944,6217,6222] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [612,1101,1102,1010,1100,480,482,1028,101,111,112,102,98,95,100,148,94,96,146,147,103,617,635,237,629,99,1106,1108,1105,1109,1107,1001,1029,660,641,638,653,253,409,251,410] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [69,261,15,71,588,16,3550,3553,3554,140,258,260,3349,3535,3538,568,3347,3335,590,3334,3567,3348,141,3515,90,76,3506,3507,3508,3509,153] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [559,3794,3328,3330,3797,3787,3623,3624,3571,3575,3588,3436,3416,3417,3418,3422,3441,3432,3614,3437,3791,3719,3559,3491,3558,3572,3340,3476,3474,3475,3344,3336,3337,3339,3639,3638,3640,3415,3413,3414] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5579,5593,6516,6508,6512,6518,6509,6309,6310,6290,5572,5600,5591,6510,6285,6287,5543,4489,5521,5522,5525,5495,5517,5520,4494,4491] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [6302,6279,6490,5646,6284,6492,6235,6454,6455,6456,6239,6269,5619,5622,6270,6393] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [4271,2497,4267,4286,4288,4282,4324,4444,4446,4447,4293,4309,2496,4744,4745,4746,4721,4711,4712,4720,4691,4692,2511,2514,4753,4743] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [4329,4332,4259,2536,3019,3179,3151,4242,3152] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [2208,2209,3241,2268,2269,2211,2204,2205,2207,2198,2085,2179,2185,2184,2180,2109,2112,2210,2079,2250,2255,2259,2267,2254,2130,2248,2243] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [2910,2911,2786,2636,2638,2665,2719,2798,2635,2721,2645,3170,3171,2704,2706,2908] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1178,1182,1185,1186,1189,1176,3030,1329,4237,2939,3012,4236,2916,2903,2776,2778,2917,2919] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5132,5137,5154,5155,5158,5160,4880,4921,4922,4874,4877,4800,4871,5138,5135,5130] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [1459,1487,703,1485,710,701,675,677,679,996,1498,1499,1500] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [2007,2010,1988,2009,1976,878,447,456,851,449,873,910,880,882,438,2052,2054,2036,2033,2055,908] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4355,3053,3083,4357,3091,4406,5408,5403,5404,4419,4364,5395,5419,4372] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [4647,4649,4828,4829,4648,4662,4452,4453,4457,3138,3157,3136,3137] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2525,4258,4268,4269,4259,4317,4315,4316,2543,2546,3178,2538,3179,4280,4263] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [253,377,597,251,268,125,1120,1121,129,361,1106,1108,1107,120] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        