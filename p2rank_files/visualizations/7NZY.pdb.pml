
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
        
        load "data/7NZY.pdb", protein
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
 
        load "data/7NZY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3794,4389,4395,3785,4397,8867,9030,9033,9034,3793,8870,8878,8495,9031,8861,8862,8873,8839,8866,4362,9028,9029,8502,9042,4387,9007,8880,4391,3786,3937,3939,4228,4232,4233,4235,4203,4207,8848,8852,8494,8503,8527,4201,4204,4222,4225,4217,4259] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5758,5769,5894,5899,5902,5120,5895,4923,4884,4880,4883,5029,5031,5373,5789,5893,5372,5891,5118,5154,5153,5334,5347,5349,5221,5222,5119,5386,4874,4875,4920,4921,4872,4873,4922,5014,5378,5367,5370,5371,5365,5346,5353,5027] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [7187,7192,7193,7196,7233,7234,7235,7236,7180,7186,7183,7185,8214,7197,8096,8221,7445,7446,7447,7480,7481,7344,7340,7342,7661,7181,8210,8212,8213,7549,8116,7548,7673,7698,7699,7700,7674,7680,7694,7697,7692,7327,7676,8085,7705,7713] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3067,2513,2519,2565,2566,2568,2567,2517,2515,3105,2529,2676,3583,2525,2674,3079,3080,3477,3575,3447,3448,3458,2896,3062,3478,3572,3574,2828,3576,3577,3580,3029,3027,2672,3014,3476,3054,2659,2668,3060,3056,3059,3036,3061] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [6691,6557,6561,6562,6564,6714,6715,6717,6718,6532,6523,6170,6536,6202,6550,6551,6554,6545,6546,6573,6713,6177,2026,2030,2032,2034,1869,1870,1872,1999,1865,1831,1840,1854,1859,1862,2045,1552,2020,2024,1428,1429,1844,1838,1841,2049,1435,1436,1437,1461] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1202,163,164,166,270,272,274,165,266,116,106,112,100,515,656,660,430,641,654,102,104,101,257,672,1203,1206,697,1095,1096,685,723,674,678,679,680,677,1198,1200,1076,1066,1065,1201] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [9174,9175,2238,9202,2196,2226,2228,2299,2279,2232,2235,2200,9213,2199,9176,9240,9242,9243,2194,2197,875,2198,2308,845,2302,2303,2306,9203] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4726,4728,4741,3483,3498,3523,3499,3522,3490,3492,3524,3073,3074,4723] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4565,4595,4597,4601,4604,4607,3260,4566,4567,4568,6897,4662,4666,4669,6924,6926,4648,6860,6886,4594] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1101,1108,691,692,1140,1141,1117,1142,1110,2378,2360,2363,2365] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [7751,8121,7711,7712,8128,8136,9349,9351,9364,8162,8160,9346] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5833,5801,5385,5809,7044,5424,5384,7041,7059,7046,5835,5794] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [5095,5098,5101,5103,5126,5094,5091,5316,5318,5268,5269,5323,5266,5267,5270,5271,5273] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [8448,8088,8089,8461,8462,8474,7733,7734,7735,7732] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        