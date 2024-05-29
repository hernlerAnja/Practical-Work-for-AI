
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
        
        load "data/6C9J.pdb", protein
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
 
        load "data/6C9J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5562,5015,5559,5013,5020,5023,6161,6289,6298,6294,6295,6265,6284,6312,6283,6285,6266,6306,4997,6291,6293,5014,5028,5029,5030,6159,6160,4990,4993,5384,5386,5387,4996,5037,5038,6143,6144,5371,5372,6146,5319,5320,5329,5328,2215,2216,2227,6301,6303,6304,4881,4882,6498,6499,6544,6257,6538,2213,6546,6547,2245,6521,6526,6528,6541,6545,2244,6495,6496,6311,6497,6494,6739,6740,6741,6742,6743,6734,6752,6565,6747,6561,6750,5691,5692,5694,5537,5540,5544,5542,5548,5549,5550,5551,5552,5553,5522,5530,5705,2217,6721,2191,2192,6548,6549,6728,6731,6732,6566,6567,6553] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [463,673,1204,544,674,1114,1189,1190,543,545,725,1087,714,722,1115,254,678,692,699,1099,1194,1195,1196,1197,1191,1094,1198,430,116,115,154,156,111,110,99,104,105,106,108,268,269,270,102,155,98,100,103] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [4152,4675,4154,5660,5662,5713,5714,2210,5704,5705,5658,5664,5667,5685,5686,5706,6742,6743,4153,4166,4888,5668,5669,4872,4866,4874,4868,4873,2224,2225,2226,2227,4880,4878,4882,4699,5560,5561,5562,4885,5670] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [6877,6878,6863,6864,6873,6875,6876,6885,6886,6850,5539,5495,5548,5549,5550,5551,5552,5553,5956,5528,5529,5530,5531,5532,5503,5501,6740,6742,6751,6865,6869,6749,5691,5692,5694,6141,6160,6156,6150,6153,6154,6161,5562] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [278,632,15,16,650,651,3470,3210,3191,3455,3456,3457,165,3413,3436,3435,3410,163,17,3391,145,3439,149,147,275,277,630,631,3211] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [4296,4353,4354,4497,4499,4500,4854,4829,4832,4852,4853,4819,4821,4301,4316,4318,4336,4315,4338,4799,4800,4704,4861,4851,4856,4481,2318,2296,2293,2297,2315,4087,4090,4086] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2919,4254,2903,4253,4387,2994,2996,2916,2917,2918,5624,5602,5615,2923,5623,4391,4394,4406,4408,4410,5651,5599,4385,4386,3002,5633,5636] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [5626,4969,4970,4974,4975,4977,5594,5628,5598,5593,5604,5400,5383,5382,5384,5385,5387,5578,5395,2971,2977,2978,2979,2980,4959] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [4213,1980,1982,1939,1946,1950,1963,4210,4211,1497,4036,4063,4064,1949,1454,4040,4212,1473,1470,1465,1463,1464,1467] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [6914,6915,6916,5860,5861,5862,5863,5865,5929,5946,5926,5944,6935,4540,6941,5925,6942,6924,6637,5845] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [740,742,744,778,774,1606,1607,1594,1595,1592,1593,768,771,1567,1082,772,769,1596,1597,1608] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1983,1990,1987,1988,4213,1980,1982,1991,1250,4220,1463,1464,981,980,982,984,4212] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [1436,1437,2768,2770,2609,2611,2767,2895,2790,2789,1276,1278,1280,1281,1282,1284] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [6850,6848,6851,6847,6863,6864,5957,5989,5990,5955,5956,5978,6751,6749,6160,6156,6165,6150,6153,6154,5994,5991,6166] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4347,3124,4293,4310,4345,4308,4299,4304,3093,2329,4303,2342,2347,2348,2350] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [3764,3774,3776,3773,3553,615,619,620,623,616,3185,622,311,314,3673,294,3671,3672,3674,624,3189,3204,3208,3207,3551] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [4990,4993,5384,5386,5387,4996,5370,5371,5372,4997,5015,5540,5542,5554] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [4615,4616,5785,5787,4581,5811,4579,5821,5822,5823,5819,4574,4605,4606] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [5762,5766,5802,5839,5755,5756,5761,5793,6676,4557,5874,5731,6668,6669,6923,5757] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        