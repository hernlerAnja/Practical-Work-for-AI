
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
        
        load "data/8P05.pdb", protein
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
 
        load "data/8P05.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4106,4103,4107,4108,3581,3584,3585,3123,3124,3125,3239,3240,3241,3109,4008,3455,4105,3611,3583,3589,3223,3224,3225,3579,3580,3582,3605,3994,4111,4112,4114,3087,3092,3096,3981,4010,3083,3084,3652,3075,4009,3627,3608,3072,3626,3073,3604,3069,3070,3969,3982,3970,3983,3985] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [425,372,426,526,527,411,427,539,1312,1311,899,915,918,921,912,914,1313,1412,1284,1297,1418,1410,1413,1419,1421,386,389,385,394,1415,543,651,1414,542,757,758,891,893,894,895,889,890,892,759,1422,375,380,381,937,962,369,368,370,936,1285] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [986,990,1278,959,956,957,1013,985,982,983,1822,1279,1823,1875,1607,1821,1829,1830,1831,1128,1321,1084,1804,1092] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2296,2310,2315,2279,2286,2290,4973,2438,2300,2302,2304,2305,2307,2025,2270,2314,5147,5141,5177,5178,5180,5186,5187,5179,5007,2416,2440,5150,5152,5120,5146,4996,5000,5002,5004,5010,4986,4989,4990,4979,5005,2437,2442,2443,2446,2448,2473,2484,2485,5018,5014,5016,2273,4991,2476,2036,2474,2475,5142,5144] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [581,1420,1437,1439,1446,543,542,650,559,582,611,401,398,399,1421] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2405,2409,2413,2440,5152,5153,5189,5188,5187,2403,2418,2419,5346,5347,5338,5335,5280,2314,2345,2346,2347,5325,5332,5303] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [802,290,291,293,812,816,314,313,869,854,856,336,338,337,549,550,551,533] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [5287,5285,5286,2762,5265,5276,5282,4428,4424,4425,2754,2758,2765,4410,4411,2750,2753,2759,2761,3862,5293,4451,3888,5288,2771,2781,4414,4415,4416,5297] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [249,659,597,619,598,599,270,811,248,863,864,862] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4788,5233,4791,2293,4761,4762,4763,4760,5224,4759,5221,2291,2283,2282,5211,5261,5217,5229] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5131,3763,3726,5378,5389,2640,2427,2673,2675,5132,2428,2426,5345] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        