
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
        
        load "data/4EOL.pdb", protein
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
 
        load "data/4EOL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4590,4591,5538,5542,5544,5546,5150,5572,5573,5172,5176,5179,5204,5161,5165,5166,5168,5129,5644,4747,4748,5646,5651,5645,5649,5128,4992,4628,4629,4574,4575,4572,4579,4581,4578,4731,5133,5145,5147,5149,4576,5123,5124,5125,5127,4630] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [248,641,93,145,146,147,91,92,96,89,90,94,95,661,662,668,675,700,643,645,1042,1047,1140,107,108,264,1029,1064,650,646,620,621,623,1135,1063,624,625] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [518,519,521,7479,7888,512,192,228,31,7913,41,42,613,28,1,4,534,536,6,19,22,509,510,5047,5044,7914,7478,7920,7882,7883,7907,7908,7909,7910,7911,5049,7876] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [2977,2986,4478,5013,2987,5014,5025,5022,5017,4711,5117,4511,4675,4487,4525,4524,3396,4481,4484,4514] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [5958,5951,5952,6679,6684,6898,6909,6698,6674,6675,5959,5713,5720,5723,5726,6922,6923,5732,6887,6893,6894,6920,5711,5704,5731,5706] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [1451,1452,1458,1464,2182,1217,1223,2405,2428,2431,2430,2226,2406,2409,1202,1204,1211,1214,1459,1197,2192,2193,2187,2189,2183] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [1080,1092,1093,497,633,651,638,647,460,462,1105,1121,1122,2343,7132,7133,7115,7113,463] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [7330,8000,8001,8036,7337,7339,8181,8182,8854,8844,5739,5737,5722,8034,8033,8065,8067,8154,5724,5725,7332,7336] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [1229,1230,1228,1213,3542,3544,3508,3509,2840,2844,2847,2838,2845,2848,3575,3662,3689,3690,4353,3573] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [1426,1419,1427,1429,1413,1436,1376,2183,2184,2177,2185,1818,1827,1832,1860,1833,2193] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [3489,3835,3836,3501,3857,3492,3744,3734,3738,3740,2550,2554,2567,2568,2909,2902,2903,2906,2937,3799,2900,2525,3484,3736,2875,2876,3794,3796,3813,3784] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [1186,3148,1232,1250,3149,3515,3516,3517,1191,1199,1200,2853,2852,1224,1229,1230,1228,1213,3543,3544,3509,1187] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [5699,5700,5708,5709,5722,5738,5739,5759,5733,5737,8009,8007,8035,8001,8036,7345,7641,5741,7344,7348,8008] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [8305,8276,8286,8327,8328,8349,7367,8236,8228,8230,8275,8277,8225,8226,7976,7984,7986,7981,8288,8287,7059,7429,8291,7401,7060,7398,7993,7987] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [4849,4853,4854,5667,5675,5767,5766,5769,5787,4847,4848,7645,4877,5771,7654,7667] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5137,5142,5156,5630,5631,5589,5602,5605,4999,2624,2625,2626,5614,5601,6835,4966,4964,4967] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [8534,6924,6916,6918,6921,6891,6923,8075,6892,8084,8085,8086,8072,8073,8040,8496,8530,8531,6925] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [274,577,578,598,60,273,551,552,579,11,12,553] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [5832,5834,5522,5520,5223,5529,5530,5531,5845,5846,6058,5194,5196] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [4038,3593,3581,3594,2400,2401,4042,2432,2433,2426,4039,3550,3553,3583,1208,2429,4004] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [543,545,3421,3390,3384,4489,4506,4514,4513,3357,3419,3391,3396,558,559,3359] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        