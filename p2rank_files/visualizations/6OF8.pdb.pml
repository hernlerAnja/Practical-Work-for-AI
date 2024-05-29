
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
        
        load "data/6OF8.pdb", protein
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
 
        load "data/6OF8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2855,2856,2876,2872,2873,2874,2875,2877,2591,2601,2659,2660,2604,2599,2265,2678,2262,2592,2617,2588,2594,2595,2596,2641,2549,2550,2551,2552,2553,2605,6064,3145,3146,3147,3162,3163,2431,2978,2994,2263,2959,2960,2857,2945,3164,2677,2840,2416,2430,2432,2429,2415,3127,2522,2326,2520,2871,2882] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [133,470,472,136,138,139,465,1016,1017,1018,302,1039,475,287,393,286,391,849,865,973,710,711,134,195,197,831,999,548,549,727,728,531,742,743,744,745,746,747,748,816,461,462,463,498,459,499,502,423,421] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [6123,6273,6290,6291,6139,5665,5667,5561,5985,5407,5405,5408,5384,5385,5382,5560,5559,6309,6002,5822,5984,6001,5823,6307,6292,5575,5576,5577,5749,5750,5737,5747,5695,5696,5697,5698,5699,5700,5410,5412,5414,5744,5746,5803,5804,5805,5782,5471,5529,6271,6016,6105] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [6802,6805,6471,6473,7350,7334,7064,7364,7062,7042,7043,7063,6865,7044,7058,7059,7061,7060,6845,6847,6828,6846,7132,7147,7165,7332,7333,6468,6469,7027,7181,6465,7146,6446,6443,6475,6807,6810,6811,6797,6800,7363,7360,7361,7362,6622,7313,7315,6726,6728,6530,6532,7069] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1530,1531,1541,1543,1540,1529,1538,1527,1533,2086,2102,2101,1884,1827,1830,1811,1812,1813,1815,1821,1810,1555,1581,1583,1585,1814,1816,1371,1491,1354,1201,1202,1779,1198,1535,1263,1265,1355,1459,1461,1933,1917,1898,1899,1617,1597,1598,1204,1206,1599,1795,1794,1796] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3653,3660,3662,3663,3665,3681,3323,3666,3324,3326,3330,3328,3491,3492,3493,4168,4183,4184,3490,3477,3861,3998,4166,4167,4015,4148,3387,3627,3610,3611,3612,3579,3581,3582,3583,3680,3877,3698,3699,3300,3878,3892,3980,3981,4185,3999] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4607,4649,4661,4662,4656,4658,4659,4319,4320,4316,4318,4735,4322,4326,5237,5238,5230,5231,5232,5235,4734,4913,4914,4648,4685,4688,4647,4684,4717,4698,4651,4645,4324,4715,4716,5203,4472,4473,4577,4579,4897,5035,5051,4381,4383,4290,5204,5017,5185,5160,4441,5158] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2457,7018,2461,5854,6893,6896,6884,6892,5842,5851,5850,1395,1393,5976,1397,1401,5974,1400,5843,2458,2462,7016,2465,7011] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [5211,5213,5214,5216,4475,4478,5199,5025,5026,288,289,292,293,294,1013,1027,1028,1030,1022,317,318,839,1025,1026,291,310,311] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4472,4473,4577,4607,4661,4662] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1410,1411,1415,1437,1447,6871,7034,7035,7036,6870,6872,6888] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        