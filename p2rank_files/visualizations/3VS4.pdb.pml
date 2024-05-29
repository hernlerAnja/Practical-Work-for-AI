
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
        
        load "data/3VS4.pdb", protein
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
 
        load "data/3VS4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3295,3307,3332,3333,6815,3308,3309,3338,3340,6899,6908,6913,3391,3141,3147,3112,3142,3145,6914,6938,6937,3176,3177,3178,6684,6685,6686,6817,3430,3405,3406,3428,3429,3298,786,6650,6653,3331,3335,3337,3361,3360,3329,778,777,779,3364,598,599,3152,3151,3153,6841,6803,6806,6837,6840,6842,6838,6839,6861,6869,6872,4079,4080,6868,4267,6947,6952,6820,6814,6816,6824,6843,6845,6659,6847,6848,6620,6864,4087,4258,4259,4260] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2422,2512,2513,1556,1665,1669,1671,1672,1673,2511,2518,2541,2542,2049,2050,2053,2038,2444,1500,1502,1554,1555,1660,2419,2427,2057,2082,1499,1505,2443,1884,1900,1901,1902,1990,2006,1809,1991,2027,2005,1655,1656,1657,1658,2030,2022,2026,2529] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [5189,5074,5075,5076,5192,5193,5020,5022,5018,5019,5024,5025,5530,5547,5550,5546,5180,5185,5525,5526,5177,5573,5577,5964,5578,5570,5602,6038,6039,5939,5404,6031,5963,6032,5551] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4090,4091,4111,4112,4119,5734,5735,5736,4148,4146,4406,4110,4113,4115,5699,5700,5705,5701,5727,5733,5710,5711,5709,6867,6871,6901,6902,6860,6933,4443,4431,4398,4418,4421,4432,4393,4412,4415,4417,6866,4080,4078,4441,6852,6884,6888,6891,6927,6931] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3380,3381,3383,610,3393,916,917,936,3344,3352,3394,937,940,3425,931,934,950,630,631,632,3363,2214,2215,2216,2213,2190,925,2192,2191,638,627,634,667,2179,2180,2181,2207,3385,3419] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [6032,6033,6047,6049,5421,6040,6061,5422,5329,5330,5404,5963,6038,5526,5510,5509,5511,5280,5189,5191] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4035,4041,4048,4045,4049,4026,3978,3982,4044,3994,4806,4003,4007,3976,3979,4043,4065,3546,3534,3532,3906,3545,4811,4828] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2562,2563,2565,1530,1532,1534,2564,2419,2388,2391,2408,2427,2516,1673,2519,2544,2547,1688,2542,2543,2575,2591,2592] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [5947,6039,6062,5911,6063,6067,6064,6082,5928,5054,5056,5050,5052,5051,5193,5208] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4874,4878,4882,3763,3767,3765,3770,3768,3623,3597,3769,3875,3877,3879,3596,3610,3594,3595,3619,3614] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1902,1990,1760,1787,1924,1989] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [5788,6835,6864,5787,5789,4087,4071,5786,4070,4259,4099] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        