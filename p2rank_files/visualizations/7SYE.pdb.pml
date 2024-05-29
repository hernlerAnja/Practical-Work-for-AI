
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
        
        load "data/7SYE.pdb", protein
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
 
        load "data/7SYE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7908,7918,10142,10144,10145,10133,10134,7894,7901,7909,7910,7916,10180,10181,10092,10093,10094,10095,10096,10097,10164,10165,10178,7889,7180,4794,4796,4806,4802,4807,4786,4799,4801,4855,4814,4815,10100,4966,4928,4930,4963,4926,4929,10191,4952,4853,7907,7906,7400,7402,7403,7233,7385,7670,7178] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [72,75,76,78,90,91,334,80,82,84,87,70,77,131,179,181,202,204,205,206,228,232,62,241,242,213,330,331,3189,3190,3191,9794,9795,3185,3186,3188,9777,9778,9779,9803,9805,9756,9706,9707,9708,9709,9710,9711,9758,3183] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [6592,6603,6586,6587,6589,6749,6598,6588,1882,1883,1896,6606,6607,6620,6633,6637,6702,6631,6636,1868,1879,1885,2048,2193,2198,1869,2047,2025,1792,1794,1862,1863,1864,1913,6771,6772,6517,6518,1909,1912,6577,6907,6908,6911,1978,2184,2187,2183,6923] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [7071,6936,7073,6958,6959,6960,6981,6951,6954,6955,6956,6974,7066,2179,1977,6935,1975,1976,1974,1966,1970,6894,6912,1899,1900,6895,6901,6902,6903] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [2178,2257,2347,2367,2250,2227,2230,2233,2235,2236,2188,6623,6624,2170,2176,2186,6700,6699,2211,6690,6695,6698] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [6994,6979,6983,6986,7128,6998,6999,7002,7359,7639,7641,7656,7149,7148,7150,7866,7353,7358,7638,6957,6953,6955,6956,6962,7881,6949,6952,7372,7373] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [5216,5402,5403,5404,6485,6491,6482,6525,5694,5417,5228,5418,5215,5014,4757,4759,6502,6486,6523,1960,6788,6791,6792,6799,1932,1933,1934,1941,5029,5030] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [9758,9748,9714,9718,9756,3185,81,82,83,2661,2679,2947,2448,2464,2676,2678,2451,2453,2454,2492,2509,3183,2513,2516,9759,2945] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [2225,2226,2229,2232,2238,2228,2645,2648,2234,2278,2932,2255,2259,2262,2426,2425,2635,2275,2917,2260,2270] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [10201,10072,10073,10074,10069,10071,10066,10161,10162,10165,10187,10094,4851,4852,4853,4894,4956,4895,4930,4926,4929,4855] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [8071,8834,8072,8536,8579,8577,8578,8591,8596,8587,8597,8598,8603,8042,8655,8657,8658,8659,8640,8607,8608] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [9981,9965,9980,9982,9989,4878,5081,5083,5102,5275,5276,5280,9991,5536,5541,5274,5277,5522,4847,9960,9958,9961] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [6495,6496,6276,6269,6273,6274,5678,5679,5695,5691,5891,6282,6214,6283] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [359,556,9595,9594,9579,9589,9596,812,378,357,552,152,154,571,377,9574,123] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [3464,3459,3691,3720,3727,3690,3731,3698,3699,3692,3697,3495,3470,3651,3664,3670,3671,3453,3476,3480,3481,3486,3488,3485,3644] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4799,4800,4801,4855,4812,4814,4815,4825,4930,4936,4905,5054,5055,5073] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [8038,8062,7695,7780,8026,7857,7679,7955,7968,7956] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [9777,9779,9801,9684,9686,9687,9708,9693,168,232,206,128,129,131] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [7365,7393,7320,7256,7257,7600] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        