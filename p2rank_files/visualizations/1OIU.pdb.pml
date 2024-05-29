
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
        
        load "data/1OIU.pdb", protein
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
 
        load "data/1OIU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [158,106,107,108,111,118,119,156,157,105,644,645,640,641,507,508,649,104,266,100,399,1164,1168,1169,1171,1071,1087,1163,1059,685,686,687,693,1088,697,700,103,666,668,663,669,676,677,684,643,281,283] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5569,4573,5177,5181,5184,5570,4570,4576,4577,5210,4579,4581,4582,5150,5153,5169,5170,4574,5145,5129,5641,5642,4746,5643,5646,5647,5649,4589,4588,4627,4628,4744,4626,5127,5123,5133,4729,5124,5125,5548,5541,5553] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [5021,5023,5036,4485,4510,4511,4512,4483,4496,4500,4482,578,582,4522,4523,4509,3371,2996,2997,3408,3441,4709,4673,3367,3370,3369,5011,5012,5020,5117,2987,3429,3430,3431,3432,3433,3399,3401,560,561,568,569,574] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [3522,3521,2858,2848,3702,3703,3672,3677,3682,4384,2862,3160,2863,2854,2857,4372,4370,4360,4361,4358,2850,1260,3161,1214,1256,1257,1258,1278,1218,1219,1227,1228,1280,1241,3528,3529,3530,3531,3151,984,1215,3556,3557,3675,1243,1244] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [7210,6857,6858,6859,7225,655,658,683,682,483,493,516,1146,517,653,1145,1129,1104,2363,1116,1117,1119,515,650,244,247,7209,251,6838,6836,6840] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [7204,9,7613,42,210,39,15,52,53,529,538,541,7203,246,530,12] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [6427,5728,5948,5949,5729,6619,6627,6631,5704,5703,5955,5956,6634,6623,6645,6647,6648,5717,5720,5723,5715,6673,5961,6416,6417,6418] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [3826,3749,3870,3797,2563,2567,2580,2581,2571,3809,2538,3848,3849,2912,3514,2885,2886,2888,3757,2919,2913,2916,3497,3502,3508,2947,3812,3746,3747,3798,3796] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [5167,5583,5586,5142,5601,2654,4714,2653,4997,5137,5628,5627,2635,2637,5134,5136,5138,2632,2636,2634,3003,4999,2655,4710,5139,5611,6578,4962,4964,4965] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [7725,7064,7906,7907,8579,7886,7726,7759,7761,7790,7792,7876,7879,5721,5719,5734,5736,7055,7057,7061,7062] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [1839,2199,2200,2201,1836,1845,1850,1878,1880,1851,1852,2193,1429,1442,1446,1441,1443,1452,1874] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [7126,8030,8053,8052,8074,8001,7123,7712,7718,7953,7092,7119,7117,7096,7955,7961,6742,6775,8013,8002,7951,7957,8000,7701,7706,7709,6784,6785,7154,8016,6913,7120] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [5719,5730,5735,5736,5758,5756,5705,5706,5696,7728,7726,7760,7761,7735,7733,7734,7732,7069,7070,7071,7072,7073,7055,7365,7366,5738,5692,5691,5465,5693,5697] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [366,386,388,1288,1290,1186,1198,1285,361,1192,1188,358,3165,3174,3197,348,351,354,359,3196] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [2419,2421,1476,1478,2420,2422,1482,2199,2198,2202,2203,2206,2208,1242,1245,1250,1251,1467,1468,1441,1443,1452,1463,1442] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [7401,7370,7379,7402,5766,4873,4875,7341,5768,5664,5666,5667,5668,5671,5670,4846,4853] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [2131,2154,2160,2182,2132,1983,1984,1775,2184,1982,1774,2165,2167,2133,2168,1827] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [2639,4997,4998,4948,4949,4950,2635,2637,2603,2981,4999,2985,2986,2987,2988,2606,2605,2590,2588] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [2534,445,448,3486,3487,2555,2557,3474,3473,3475,3470,3471,3472,2565,3484,2956,2554] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [3605,3606,3607,4052,4017,2445,4055,2439,2442,3596,3594,3561] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [6246,6257,6249,6323,6350,6352,6268,6262,6353,6354,6357,6382,6111,6112] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [3743,4287,4249,4262,3762,3763,3764,4224,4227,4251,4193] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [3700,2891,3519,3521] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        