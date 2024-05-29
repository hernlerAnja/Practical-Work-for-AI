
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
        
        load "data/4FAD.pdb", protein
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
 
        load "data/4FAD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4905,4908,3408,3410,4907,4940,3409,4909,4935,4938,1140,1141,1142,1102,1111,1114,1115,1116,1118,1088,1072,1101,1110,4886,4887,3396,4848,4850,3759,4910,4911,4912,5048,5065,3715,4425,4440,4441,959,4439,5068,3714,4435,4438,4851,5071,3712,5081,5079,3376,3377,467,1074,1075,1076,1077,468,1073,976,3397,3400,3711,3713,3679,3680,3710,978,4934,519,538,540,548,1138,4975,1103,1105,496,497,482,5051,5050,5044,5032,5012,5014] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5721,5202,5188,4549,5703,5704,5705,5831,5833,5696,4572,4581,4559,4562,4563,5224,5694,5695,5697,5225,6762,5802,5809,5798,5800,5720,5801,5057,5059,5167,5058,5060,5142,5147,5159,5161,4846,5803,5806,5807,5808,4778,4779,4780,4800,4580,4801,4802,4578,4596,4760,4618,4551,4759,5143,5781] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4445,967,969,4027,4403,4404,4405,4468,4469,446,447,448,968,4446,3699,4000,3673,4447,3665,3666,3667,3994,3671,3993,1275,1276,1268,1277,1266,1245,3999,3669,429,1239,4026,3990,3991,3992] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2652,2658,3216,3217,3218,3210,6310,3204,6278,6277,3202,6253,2625,2626,3179,6247,2636,6309,2248,2250,2251,1607,1608,1609,1610,3227,3229,2858,2859,2860,2896,2894,2895,2640,2871,2864,2868,6371,6373,2632,6375,6400,2249,2255,6360] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3138,3125,4983,498,496,497,3136,3135,3137,4942,4943,4951,4981,6226,6203,6205,3352,3383,3384,3385,3129,3142,3144,3421,3145,3146,6227,6228,3407,4944,4945,3409] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [5632,5638,5640,6415,6417,4870,6270,6294,6272,6388,6389,6414,5850,6353,6391,6302,5869] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [6726,6727,6769,6732,6734,5247,5249,5251,5250,5244,6714,5309,5215,5236,5238,5243,6716,5275,5268,5273,5274,5292,5216,5694,5697,5675,5686] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3243,2976,2977,2978,3006,3008,3010,2947,2954,1358,2979,2980,3260,3244,1889,1893,1895,2115,2462,2465,2466,2461,1357,1877,1883,3248,3251] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4827,2278,2279,3821,3810,3817,3839,6319,3492,6313,6314,6318,2266,4808,4809,4810,6320,6321,6336,6335] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2311,2314,2307,2308,3541,211,212,225,228,2315,2320,183,194,2040,2046,2053,203,204,2051,2141,201,236,3540,3870,3871,3872,2059,2057] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [958,959,1090,4707,4701,4702,944,948,4460,4738,4720,4661,4694,4706,1163,1089,1119,949,4725,4729] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5516,1137,5489,5508,572,5510,5011,5012,5014,5028,5549,5547,571,5520,5517,5518,1139,1140] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [5679,6724,6761,6760,6762,6754,5860,5861,5862,5681,5832,5834,6752,6753] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1599,1598,3234,3235,1901,1913,3496,3518,3517,3514,3222,2296,3208,2295] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        