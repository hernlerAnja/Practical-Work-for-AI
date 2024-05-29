
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
        
        load "data/6T6A.pdb", protein
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
 
        load "data/6T6A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5454,5465,5487,5490,5491,5492,5493,5467,2669,5534,5535,2765,2766,5169,4837,2709,4830,4841,5457,5458,5199,5203,5426,5207,5211,5455,5171,5195,5196,5197,5198,5194,2641,2642,2643,2630,2729,2731,2764,2609,2610,2788,2795,2798,2804,2763,2801,2803,2809,2808,2840,2707,2710,2711,2712,4866,4882,2686,2689,5510,5513,5536,2026,2667,2668,2663,2670,2674,2677,2042,2839,5212,5214,5501,4835] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [2630,2631,2633,2634,1990,2001,2339,2363,2364,2365,2366,5590,5592,5594,5616,2337,2602,5433,5434,2600,2601,5625,5627,2381,5633,5587,5612,5613,5619,5628,5632,5663,5664,5464,5465,5493,5466,5467,5549,5553,5555,5588,5589,5591,5593,1995,1996,1997,1998,2332,2371,2362,2367,2379,2380,2382] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1310,1337,934,937,881,910,904,907,908,909,433,890,320,883,885,1339,448,272,321,300,301,275,267,903,263,269,264,738,739,1429,1430,884,886,1431,1432,1322,1436,1437,1439,450,573,915,930,919] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4150,4162,3770,3774,3777,3805,4271,3755,4177,4178,4179,4269,4270,3579,3721,3723,3730,3749,3750,3748,3109,3115,3273,3166,3113,3121,3147,3167,3165,3725,3747,3759,4279,3146,3290,3288,4272,4276] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [9410,9412,9931,9932,9840,9841,9933,8935,9383,9241,9384,9439,9812,9824,9409,9417,9421,8827,8828,8829,8950,8809,9385,9387,9388,8777,8780,8808,8783,8775,8771,9934,9938,8951,8952,9941] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [7009,6607,6980,5991,5945,6992,5937,5989,6551,6560,5990,6103,6553,5933,5939,7100,6580,7099,7008,7101,6409,5971,6118,5970,7109,6555,6556,7102,7106,7107,6554,6573,6577,6585] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [8799,8800,8803,9940,9941,8798,9012,9040,9041,9954,9955,9956,9962,9961,9015,9017,10067,10048,10062,9782,9784,9800,9774,10069,8806,8790,8793,9801,9824] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3792,3794,3796,3864,4440,4442,4155,4154,4443,8899,8898,8900,4701,4657,3862,4686,4145,4144,4146,4439,4441,4454,4437,4438,4453,4420,4421,4422,4430] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [5955,5968,6969,7109,5959,5960,5961,5962,5965,6950,6951,7246,6952,7251,7239,7247,7240,7230,7235,7237,7123,7124,7129,7130,7216,7201] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1454,1460,1438,290,289,513,515,1439,1280,1281,1282,1299,1576,1581,295,298,291,292,282,285,1456,1459,1567,1569,1570] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4292,3412,4278,4279,3144,4139,3136,3138,3353,3137,3141,4300,4293,4299,4294,3378,3350,3383,4122] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1597,1598,1599,1603,1593,1580,1581,1601,1613,1614,1305,1306,1817,1600,1602,1861,1862,1314,1313,1315,954] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [10319,10116,9456,10102,10104,10363,9454,9799,9815,9816,9817,9801,10083,10115,10082,10084,10095] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [6622,6624,6983,6984,6985,7487,7283,7284,7531,7532,7270,7272] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        