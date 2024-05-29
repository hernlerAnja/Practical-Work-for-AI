
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
        
        load "data/7JWZ.pdb", protein
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
 
        load "data/7JWZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [467,466,468,963,960,1074,1076,3355,3356,3357,3333,3361,3362,3359,3360,3719,3718,3639,3640,3670,3671,3672,3673,3674,3675,4435,3625,3626,3632,3633,446,943,945,4449,4450,4454,4456,4457,4459,4460,448,951,954,3627,4860,4885,4896,4919,4920,4897,4918,4921,4922,5058,5060,5074,5075,1102,1104,4451,3398,4455,4415,5081,5078,4436,4944,4945,4946,4947,4948,540,4982,4984,4985,4986,5012,1089,548,1100,1126,1127,1128,5024,4917,3368,3370,4943,4950,4951,4954,4953,4993,3369,1061,1063,3336,3337,482,496,1059,1057,1058,1062,1091,3366,3367,497,3344,5061,4949,5042,4887,5018,5025] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5818,5819,5811,4770,4626,4628,4606,4620,4546,4788,4789,4790,5730,5808,5810,5731,5174,5070,5072,4769,5152,5153,4768,5157,5169,5171,5067,5069,5071,5707,4573,4562,4559,4560,4561,4555,5213,5703] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3959,3960,3631,3953,1254,4455,4023,4413,955,3984,3986,3987,4414,4415,4479,3661,3659,447,429,3629,430,1225,3627,4456,448,954,3625,3626,3632,3633] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [5838,5843,5844,5842,5657,5642,5648,5650,6405,6407,6380,6381,6404,5824,5823,4878,4880,6260,6291,6292,6262,6378,6379,6382,4844,6318,6319,6317,6316,6330,6340] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [6299,6356,6355,3170,2596,3164,3176,3177,3178,1574,6300,6237,6268,6243,3175,3187,3189,2585,2590,2831,2600,2617,2618,2828,2586,3139,3136,2820,2855,2856,2819,2854,6354,6388] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3096,3091,3085,495,3379,3366,497,498,3343,3344,3345,3098,3102,3104,3105,3381,3089,4961,3368,4954,4955,4953,4993,6216,6219,6194,6196] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [4836,3770,3777,3780,4837,2248,2249,2250,3799,3801,6303,6309,6310,6311,3452,3752,3753,6304,6302,6296,2236,2237,2243,4835,2217,6314,6315,6320,6321,6323,4820] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [202,204,189,195,203,2282,2286,2291,211,193,235,183,3830,3831,3832,2279,2280,2028,228,2278,2022,2026,3501] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1147,1148,4709,4712,1105,1149,1075,1072,1167,1171,930,934,942,944,1145,1153] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [5320,6725,6726,5223,5225,5226,5698,5258,5246,5253,5690,5261,5302,5301,5308,5285,5292,5699,5319,5248] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [4856,4827,5070,5072,5151,5152,5153,4855,4854,4809,5813,5818,4810,4812,5808] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2226,1915,2258,2259,1552,1916,2255,2254,1966,1551,1897,1899,2267,1570,1572,1590] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [692,4699,4695,4696,4703,4694,4697,664,665,667,663,932,4706,4709,4711] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [658,834,839,836,838,908,1197,1198,657] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3810,3812,3837,3841,3500,3796,2263,2273,2275,2281,3467,3476,2279,2280,3833,2285] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        