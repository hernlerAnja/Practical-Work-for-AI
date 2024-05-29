
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
        
        load "data/3EJ1.pdb", protein
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
 
        load "data/3EJ1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4997,4999,4534,4650,4651,4652,4489,4490,4492,4649,4501,4502,4519,4520,4521,4533,4483,4995,4635,4994,4996,4998,5423,5512,5516,5517,5518,5519,4516,5015,4487,5020,5023,4993,4862,5439,5438,5440,5511,5418,5053,5411] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [128,129,130,92,95,1034,1006,646,1035,649,598,231,615,89,83,642,618,87,593,462,590,592,594,588,589,591,358,246,247,248,1107,1108,1111,1114,1106,1018] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [7326,7327,7729,175,22,510,35,36,582,16,25,1,2,7720,7722,495,7754,7752,7753,492,493,7761,4917,509,4914,483,484,486,211] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [3324,3329,3351,3352,4883,4892,4893,4895,3320,3354,4908,4910,3353,4434,4435,4436,4422,4425,4417,4401,2926,2927,4579,2917,4615,4629,4884,4887] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [6796,6770,6771,5571,5573,5805,5808,5810,5816,5815,5809,6769,6754,6738,6744,6757,6541,6532,6531,7916,7917,5591,7874,5590,5795,5353,5567,5568,5569,5586,5587,5593,7877,7886] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [1162,3477,1165,1167,3486,1182,1185,1186,1398,1385,2354,2336,2337,2333,2369,2371,3516,2370,3517,1406,2357,1395,1399,1400,1405] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [3506,3508,3590,3591,3586,3593,3588,2784,2787,4289,4291,4293,3617,3619,3594,3598,4279,4280,1179,1184,2778,1378,2792,3442,3476,1186,1380,3475,3477,3472,1187,2780] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [8019,8685,8687,5608,7841,7187,7178,5591,7991,5584,5585,5592,7875,7876,7877,7872,7906,7908,8017,8018,7998] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [2110,2125,2126,1808,1807,1765,1780,1781,1809,1774,1779,1800,1356,1359,1361,1398,1373,1385,1322,1399,2116,2117,2118] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [7817,7822,8163,8164,7243,7246,7242,7219,7277,8073,7834,7240,6908,7249,8063,8067,8186,8065,8113,8159,8142,8129,7215] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [6542,5732,5733,6533,6184,6175,6178,6189,6526,5808,5809,5783,5769,5780,5771,6191,6217,6218,6219] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [3729,2840,2877,3713,3673,3667,3663,3714,3665,3712,3428,3434,3742,3786,3765,3759,2842,2843,2846,3427,2815,3764,3417,3422] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [602,607,622,1051,1076,436,1092,1093] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [2048,2050,2080,1699,1957,1958,1959,2047,1937,1919,2021,1707,2077,2045,2046,2051,2052,2054,2055,1913] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [2515,2517,2911,2915,2918,2561,2917,4871,2566,4821,4822,4869,2562,2563,2564,2565] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [5007,5497,5498,5012,5027,4834,4836,5453,4837,5481,6692,5456,5469] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [1151,3100,347,1137,3105,1150,1246,1213,1217,1240,968,1193,1391,3102,3104,1198] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [1112,1113,1114,107,978,994,995,1018,1137,1135,1136,323,325,112] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [6963,6964,6965,6962,7311,7315,7316,7317,471,469,6915,6966,470,421] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [3322,514,515,3321,3320,3316,3347,3350,3351,3385] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        