
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
        
        load "data/4RIY.pdb", protein
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
 
        load "data/4RIY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5498,5602,5609,5527,5528,4986,5601,5608,5117,5121,5111,5094,5099,4789,4619,4609,4610,4611,4614,4615,4618,4657,4806,4655,4606,4604,4656,4608,5512,5476,5501,5502,4622,5735,4627,5760,4629,4805,5631,4802,4804,4798,5077,5078,5080,5603,4985,5095,4787,5006,5148,5149,5173,5141,5144,4602,5120,5113,5499,5763,5764,5765,5761] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [7215,7079,7081,7870,7950,7951,7871,6926,6927,6928,7077,7423,7424,7062,7063,7064,7440,6879,7972,7819,7855,7956,7957,7959,7845,7953,7958,7841,7468,7469,7472,7476,6876,7501,6877,6875,6880,7477,7216,7248,7973,6905,6906,6907,6909,6882,6908,6910,8123,6881,7974,7179,7180,7181,6904,7980,7982,7981,7098,7080,7446,7442,7445] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1082,1185,1111,1112,1186,1187,570,571,1191,1192,1193,194,341,343,664,569,732,733,725,156,151,152,155,180,683,695,326,678,679,339,661,662,141,143,193,192,697,704,705,701,1083,1085,1086,1096,159,164,1060] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2911,2925,2923,3353,3354,2547,2906,2362,3441,2563,2365,2391,2393,2411,2392,2388,2389,2410,2560,2360,3432,3433,3434,3431,3436,3324,3333,3338,2932,2794,2928,2952,2955,2959,2984,2359,2363,2562,2564,2699,2905,2907,2730,2731,3438,2792,2793] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [5715,5716,4637,5683,5687,5690,5671,5461,4639,5898,5899,5897,5465,5466,5636,5777,5778,5817,5818,5844,5877] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1806,1810,1811,1954,1835,1920,1956,1957,1958,1921,1966,1773,1986,1987,1988,2025,1985,1801,1804,2654,2655,2656,1833,2623,1834,2689,2679] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [6501,6470,6469,6471,6473,7174,6350,6437,6476,6477,6327,6438,6483,6474,7173,6352,6502,6503,6504,6290,6328,6318,6319] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [305,319,235,237,50,596,598,599] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [6600,6602,6504,6505,6294,6293,8004,6527,6586,6587,6588,6589,6712,6725,7773] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1801,1802,2710,2711,2712,2714,1804,1773,1771,1811,2713,2715,1777,2684,2709,2687,2688,2689] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2070,2071,2072,2083,2084,2085,3487,1776,1775,1777,2177,2178,3513,2010,2046,2049,1987,2013,2011] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4179,4181,4183,3903,3761] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        