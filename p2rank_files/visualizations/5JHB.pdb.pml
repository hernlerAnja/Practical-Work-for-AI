
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
        
        load "data/5JHB.pdb", protein
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
 
        load "data/5JHB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1134,1137,1110,1111,1113,1145,1097,1133,1106,1109,4794,4773,4830,4795,4936,4819,4821,4823,4824,4825,4950,4951,4311,4312,4324,4325,4772,4957,4796,4797,4798,4934,4954,4965,1085,3342,4736,4740,4888,4820,4860,4861,538,540,519,549,3312,3301,3303,3313,3314,467,1072,468,1070,1071,1083,1067,3300,3662,3663,3334,3661,3304,3615,3617,3618,3619,3614,3616,3584,4326,954,497,3281,496,4862,1098,1100,4918] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [5646,5647,5650,5651,5652,5549,5653,5537,5642,5644,5645,5088,5564,5565,5074,4666,4448,4449,4450,4481,4482,4436,4437,4504,4688,4687,5028,5033,5026,5027,5029,4645,4646,5044,5045,4704,4730,4732,4663,4664,4662,5053,4943,4944,5047,5050,4946,4948,5087,5109,4455,4454] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [1901,1902,1453,1900,1646,1636,1637,1638,1435,1436,1645,1454,1643,1920,1919,1906,1907,1908,1438,1440,2294,1417,1917,1400,1402,1653,1882] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [3122,2529,2534,2537,2536,3120,3121,6215,6079,6085,6109,6110,6076,2527,2530,3114,6142,2158,6141,6189,6190,1534,2562,3108,3119,3131,3133,2800,3118,2799,2764,3083,2772,6214,6187] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [3905,1272,3575,1271,3897,3904,1240,3928,4289,4290,4291,3930,3931,4353,4355,3605,448,446,429,430,1234,3571,3573,963,964,3570,4332] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [4756,6126,6161,5657,6102,6104,6159,6160,5476,6133,6204,6134,6158,6206,5679,5681,5682,5491] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [4713,3718,2188,2189,3724,3725,3726,3743,3745,3733,3734,2134,3714,3721,6152,6154,6138,6145,6146,3396,2175,2176,6153,6155,6156,6157,6162,6163,4694,4695,4696,2152,2153] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [497,3287,3288,3289,3042,3046,3048,3029,3049,3040,3324,3325,3311,4837,6035,6037,4828,4868,4830,4831,6061] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [3584,4333,4326,972,954,970,971,973,4335,466,468,1066,1068,1083,1067,1073,1074,460,1085] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [5036,5037,5038,4311,4314,4324,4325,4327,4934,4345,4620,4624,4625,4346,1113,954,4326,4610,5059,4607,5042,4615,5062] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [1814,2851,2855,2375,3146,3164,1811,1821,1823,1817,2018,2016,2369,2370,1805,2911,2913,2914,2881,2880,2853] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [4281,4023,3989,4015,4247,4249,4376,4532,4231,4233,4235,4248,4253] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [189,195,211,203,204,2217,2221,2225,2230,235,236,193,2224,183,3774,3775,3776,3445] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [836,1206,838,844,845,846,848,873,809,811,812,813,875,839,1204,899,901,673,674,675,896] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [6547,5152,5133,5134,6576,6549,5525,5102,5541,5101,5524,6577] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [4899,4900,5391,5393,5394,5395,4914,5352,5355,581,534] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [512,562,589,756,587,614,1040,1127,624,622,586,588,1128] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [5712,5724,5713,5733,5739,5742,5753,5741,5747,5748,6497,5738,6507,6470,6436,6462] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [3753,3755,3740,2212,2214,3411,3785,2219,3444,3748,3777,2224] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [2218,1961,1963,1957,203,2217] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [2787,3118,2829,2831,2832,2834,3130,3124,3134,1520,3140,3144] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        