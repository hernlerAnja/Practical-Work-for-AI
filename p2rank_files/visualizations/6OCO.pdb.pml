
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
        
        load "data/6OCO.pdb", protein
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
 
        load "data/6OCO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5699,5725,5726,5729,5730,5756,5757,5903,5916,5919,5920,5912,5913,6001,4265,5758,5720,5896,5719,5721,4275,4264,4266,4545,4575,4577,4579,4259,4300,5700,4621,4622,5292,5303,5301] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [3002,3003,3143,2978,3184,3185,7867,3155,3189,2209,2215,2786,8642,8643,2995,4693,2990,2993,3142,4686,4687,4688,4676,2987,2792,2992,3109,3111,7866,8604,7872,7905,7898,7899,4668,3158,7897,8606,7933,2804,3086,3102,7836,7838,3000,3015,4694,4680,3105,7870,7873,7875,7908] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [6056,6487,5423,5492,6459,6013,6041,5908,5909,5910,6486,6570,6571,6578,6579,5905,5906,5907,6010,5992,5993,5997,5609,5628,5424] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [1693,5558,5559,5560,5561,5573,5574,5571,5534,5580,5589,5577,1730,1708,1709,1710,1842,1844,1846,1867,1873,1913,1930,1908,5569,5570,5563,5568,1866,1837,1701,5323,5324,5535] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [4111,4109,4112,4113,2890,4096,2640,2629,2630,4417,4418,4420,4422,4379,4381,4380,4363,4364,4426,4427,4411,2866,4392,4395,4397,4132,4133,4134,4050,4056,4162,4342,4052,4094,4060,4085,4365,4340] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [4832,1185,1186,2016,4833,4834,2017,2018,4535,4868,4857,1233,1721,1722,2020,5275,1222] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [6376,6562,6563,6354,6358,6695,6696,6697,6699,6698,6479,6542,6432,6433,6744,6713,6412] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [2916,2917,2826,2962,960,4394,4396,2863,2856,2859,2944,2946,4385,3117,2833,3135,3127,3115,3125,3130,945,3134,944] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [1274,1273,5855,5856,5858,5875,1863,1866,1861,5898,5881,5899,5817,5818,5819,5820,6534,1867,6504,6533,1833,1834,1835,1888] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [842,4638,4598,4639,4904,845,4906,4933,4934,834,856,5940,5942,5945,5972,5973,5948,4611,4925,4923,4924,4957] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [7441,7442,6751,6785,6863,6865,7440,7477,6721,6723,6753,6754,6786,6725,6822,6812,7480,6803] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [6386,6387,6388,7398,7253,7259,7261,7358,7359,7360,7361,7364,7365,7362,7363,7400,6966,7370,6660,7401,6662,6663,6664,7276,7296,6670] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [1765,1759,1539,1753,1756,1764,1650,1517,1161,1164,1165,1167,1166,1168,1195,1158,1157,1633,1631,1163,1192,1515,1508,1509,1511,1512] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4711,4685,866,867,3145,3148,3149,3150,3139,931,930,3133,3135,3124,4714] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1087,1123,1088,4811,4818,1111,1214,1215,1113,4813,1182,4823,4825,4829,2042,2043] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5265,4920,5520,5601,5238,5500,4950,5242,4928,5984,5288] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5625,5452,5626,5629,5646,5453,5438,5469,5470,5471,5622,5630] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        