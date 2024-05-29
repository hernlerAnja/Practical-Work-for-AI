
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
        
        load "data/7B7S.pdb", protein
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
 
        load "data/7B7S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4710,4744,4969,5482,5483,5481,5486,4637,4618,4619,4620,4459,4502,4474,4488,4462,4465,4467,4485,4481,4847,5409,5021,5024,5381,5410,5050,4966,4967,4968,4973,4603,4460,4501,4985,4987,4993,5000,5001,4990,5487,5488,5489,5388,5393,4468,4709,4478,4480,4483,4475] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [124,125,226,123,87,83,89,241,242,243,1041,592,1114,1115,1118,1119,1120,1121,1020,1025,1113,1042,1007,633,640,644,647,608,613,616,471,587,590,589,591] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [3309,3336,3337,3338,3314,3346,3312,4374,4398,4408,4395,2904,2905,4583,4409,4547,4584,4878,4869,4870,4957,4873,4879,4881] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [5279,5796,5794,5795,5797,6557,6552,6555,5822,5544,5569,5542,5548,5563,5788,5789,5801,6510,6511,6512,6516,5567,5762,5763,5764,5772,5784,5254,5277,5252,6561,6562,6742,5276,5773,5716,6696,6714,6688,6689,6692,6716,6522,6705,5560,5555,5557,6698,6699,6700,6566,6703] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [492,501,502,496,493,206,207,24,504,580,34,35,36,1,7682,7705,25,7272,7714,7273,7703] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [7859,7861,7908,7929,7931,7932,7959,7960,7794,5561,5562,7828,7830,7933,5570,5574,5575,5566,5576,7124,7138,7795,7130,7133,5559] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [3753,3754,3775,3413,3419,2797,2472,3714,3731,2485,2486,3718,3703,3652,3711,3712,3716,3402,3407,2443,2467,2468,2818,2855,2614,3662,2820,2821,2824,2827,2793] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [3433,3434,3461,3427,3429,3460,3462,2774,2772,2773,3435,3436,1168,1169,1177,1178,1191,1163,1230,1202,1206,1165,3057,2771,3066,3067,1207,1208,1210,1164,1228,2770] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [8014,8006,8004,8005,8008,8070,6853,6840,6854,8100,8105,8106,7775,7787,7770,6811,7781,7165,8083,8127,8055,7188,7189,7192,7195,7223,7780,7161,7186] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [529,306,308,314,3304,3265,3273,3302,3303,528,305,3264,3266,3271,527,3305,537,3275,286,3268,276,534,278,535,526] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [5533,7804,7802,7803,5532,5545,5596,5598,5546,5559,5578,7434,7435,7142,7138,7139,7140,7141,7795,5570,5574,5576,5305,5306,5531,5537,5534,7829] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [3427,3460,3462,1206,1191,3426,3493,3577,3580,3607,3608,3491,2758,2763,2765,2762,2766,4280,1208,2756] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [1420,1421,1433,1427,1174,2144,2153,2142,2143,2337,2338,1201,1195,1189,1200,2348,2349] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [5750,6506,6513,6514,6521,6153,6155,6189,6169,6170,6171,6164,5763,6512,6198,6199,6197] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [1382,1395,2145,1787,1830,1831,1785,2144,2146,1802,1804,2154,2138,2139,1796,1396,1399] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [480,600,1100,1073,1058,1099,445,443,446,1083] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [5467,4977,4982,4995,5423,5426,4997,4820,4822,5468,5451,5441] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [1382,1787,1830,1831,1801,1803,1821,1802,1804,1796] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [518,560,562,564,561,563,565,2,4,233,54,33] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [2350,2344,2347,2349,3512,3958,3960,3510,3499,3501,3498,3511,2327] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        