
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
        
        load "data/7LV3.pdb", protein
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
 
        load "data/7LV3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7917,7920,7921,7922,7923,7011,7012,6850,6853,7406,6881,6882,6883,7010,6865,6995,7816,7913,7915,7804,7805,7914,7447,7831,7832,7833,7425,7424,9060,6834,7421,6836,7792,7793,7776,7947,7949,46,48,49,50,7105,7108,7086,7087,7088,7104,6854,6855,6856,6857,6858,6861,7064,7056,7057,7059,7060,29,38,41,6845,6844,6849,6839,6840,6842,21,22,23,24,25,7451,6833,9085,7936,7916,7144,7163,7426,7265,52,53,59,63] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [3333,3222,3223,3234,2867,2869,3224,3210,3211,2239,4690,4674,4691,4687,4667,4668,4669,2828,2277,3249,3331,3332,2839,2223,2225,2238,2233,2234,2228,3251,2865,3250,4480,4482,2842,4670,2222,4508,4484,2898,2573,2407,3338,2278,2405,2406,2824,3354,3339,3340,3341,2512,3362,3363,3365,3367,3194,4695,2260,2242,2243,2250,2252,2823,2390] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [5525,5527,5532,3808,3821,3822,5317,5318,5377,5415,5436,5437,5439,5448,5435,5452,5445,5446,5502,5455,5506,5425,5447,5428,5175,5176,5516,5546,5528,5531,5391,5392,5511,5521] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [803,804,805,806,815,819,885,577,912,899,704,911,8390,8402,8403,878,888,895,898,873,869,883,8394,820,821,893,795,798,748,762,763,703,802,812,813,792,814] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [3122,3618,3616,3123,4156,4143,3402,3410,3412,3414,5945,5946,3415,5913,5914,5915,5923,5921,3130,3607,3608,3609,3648,4176,4136,4170,4167,4148] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [6221,6222,6486,6328,6344,6345,6480,6481,6482,6485,6465,6475,6374,6386,6389,6396,6397,6403,6455,6456,6470,6392,6501,6082] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [1780,1781,1456,1856,1839,1840,1849,1852,1791,1733,1758,1770,1773,1776,1870,1859,1866,1869,1864,1602,1716,1603,1885] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [3430,5741,5759,5760,5761,5762,5788,5790,5754,5756,3429,3583,5733,3450,5731,5961,5963,5964,5965,5966,3584,3587,3586,4098,4090,4097,4994,5958] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [1316,1317,1283,1284,1286,7985,7995,7996,7983,8189,8191,8723,8188,8728,8736,8746,8747,8716,7704,7991,7993,7703,7705,8198,8197,8199,8750,8229] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [3583,5733,5726,5731,5727,5008,5790,5754,5791,5994,5996,5995,5978,4992,4994,4990,5966,3581,3586,4993,5007,5017] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [1338,1334,8169,8167,1096,1117,1094,1115,1118,1119,1329,1151,1153,8012,8164,8165] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [2150,2152,2153,2154,2195,2301,2172,2173,2193,2414,2799,2753,2398,2796,2798,2415] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [6722,6732,6720,6684,6702,6972,6988,6990,6971,7294,7296,6734,7411] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [7569,7568,7602,8861,8942,8959,8953,7592,8852,8854,8937,8859,8938] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [7496,7492,6,7497,7498,8307,8334,8340,8347,15,33,34,7466,7468,7469,5,7471,32] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4704,4694,4697,4702,2461,2462,2255,2256,4689,2492,4707] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [93,102,87,1073,170,1074,1049,82] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2986,3018,3021,4380,3010,3011,2987,4279,4281,4360,4274,4284,4272,4361,4365] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [3497,3814,3815,4685,5485,4702,5487] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        