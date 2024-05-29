
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
        
        load "data/3MY5.pdb", protein
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
 
        load "data/3MY5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4823,4824,5209,5210,5212,4825,4699,4641,5077,5727,5728,5732,5733,5655,5656,5627,5634,5639,4660,4647,4652,4653,5735,5628,5236,5219,5078,5239,5270,5255,5263,5267,5213,5214,5215,4698,4644,4645,4697,4808,5231,5233] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [559,3485,3486,3053,3462,3487,553,557,3449,3451,3453,3455,4583,572,4553,4556,562,567,4574,571,4558,4580,4752,4582,4594,4593,5099,5108,5111,5100,5102,4788,4789,5203,3457,3421,3043,3052,3494] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [501,1083,1084,647,664,667,99,698,724,268,149,150,151,639,643,637,638,640,642,500,1155,1156,1055,1062,1067,269,1161,1163,1160,641,661,93,94,675,252,95,97] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [232,46,44,7340,7341,1,2,532,534,7782,196,7750,531,522,523,526,533] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [2428,2443,2444,1424,1875,1877,1871,1876,1831,1833,1836,2206,2213,2198,2214,1447,1437,2435,2204,1387,2205,1848,1849,1842,1847] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [508,651,1141,1142,648,1100,1097,6979,1125,2363,1112,473,475,476,2364,656,6975,7347,6994,6995,1113,233] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [3614,3762,2918,1249,1250,2904,1233,1240,3571,2921,3572,3613,1220,3729,4456,3708,3732,3764,2911,2913,3739,4444,4434,4435,4430,3578,2906,2910,2914] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [7926,7928,8041,8017,8022,8722,5805,5808,7895,7897,5807,8015,8012,5821,5822,7192,7862,7201,8042,8724] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [3564,3566,3811,3932,2942,2941,2944,3819,2616,2975,2633,2634,2969,2972,2968,3809,3860,3808,3813,3003,3875,3910,3911,3548,3553,3905,3559,3888,3859,3858] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [7946,8389,8390,8393,7945,7947,8358,7932,7933,7934,7936,7901,6781,6783,6780,6782,6784,6785,6736] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [4660,4663,4668,4670,5735,4823,4824,4825,4699,5734,4677,4842,4933,4935,4968,5748,5749,5750,5756,5758,4674,4840,4682,4685] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [6921,6922,8136,8153,8137,7254,7291,8097,7050,7263,7836,7229,7256,7257,7260,6912,8149,8166,8210,7854,8188,8189,7841,7852] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [7206,7207,7502,7503,5824,5821,5822,7192,7862,7864,7868,7869,7870,7208,7209,7858,5816,5842,5844,5783,5782,5791,5792,5778,5805,7896,7897] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [5684,5687,5672,6671,5697,5053,5052,5063,2687,5220,5223,5228,5243,5714,5669,2707] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [3618,3661,3663,4117,3662,3664,2496,2497,3619,3622,4121,2494,3651,3653,2452,2492,2493,2495,3650] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [2176,2178,1819,1821,2187,1985,2177,2179,2142,1987,1986,1767,2165,2171,2180,2189] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [2643,5086,5087,5031,2642,2641,5085,2688,2690,2691,2692,2689,5037,3041,3037] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [355,345,351,376,1190,1178,1186,1181,1180,1182,378,1280,1282,3219,3228,1278,1277] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [5188,5169,4612,4710,4834,4708,4563,5187,5167,4564] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [9,10,34,35,7775,7714,7711,7713,5149,5139,5144,5145,5147,4876,7740] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [5632,5286,5287,5915,5917,5912,6141,5896,5928,5929] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [3524,402,440,3520,3523,437,2607,2608,2610,2618,2586,3525,3526,3012] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        