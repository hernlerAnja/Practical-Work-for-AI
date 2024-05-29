
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
        
        load "data/3ZH8.pdb", protein
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
 
        load "data/3ZH8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7016,7017,7005,7013,6998,6999,6997,7000,7032,7035,6995,6479,5992,6470,6474,6477,6481,6485,6486,6510,6285,6286,6271,6277,6283,6284,6290,5999,5997,6001,5989,5990,5996,5964,7039,6270,6276,6281,6263,6952,6953,6954,6958,6963,7015,2486,2487,2495,2488,7022,6267,6466,6467] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [3994,3979,3990,3995,3795,4470,3498,4019,4022,3494,3495,3496,3989,3983,3986,3988,3772,3773,3781,3507,3502,3503,3769,3964,3965,3976,3975,3958,4514,4528,4530,4531,4532,3782,3788,3789,4510,4554,4512,4513,4515,4520,4469,4468,4473,3470,4558,3785,3786] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [5308,5202,5306,5144,5200,5201,5146,5302,5293,5706,5708,5142,5148,6200,6121,6122,6198,6199,5732,5715,5694,5690,6201,6204] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [2771,2660,2661,3701,3702,3195,3188,3190,3191,3700,3703,2659,3058,3589,2610,2611,2613,2615,2619,3588,3612,3706,3707,3709,2638,2639,3708,2645,3234,3235,3233,3243,3601,3628,2604,3627,3213,3216,3209,2605,2606,2608] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [944,1242,1246,1965,1443,1446,1448,1238,1248,1249,1450,1439,1454,1455,1427,1436,1255,1418,1424,1425,1435,2013,2009,1479,1968,1970,1969,1987,1925,1926,1927,1992,1985,1975,1983,1986,2005,1967,968,966,967,975,970,1449] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [94,90,91,92,96,145,247,680,682,684,687,146,660,661,662,260,262,703,1091,1092,711,1065,1165,1166,1171,533,700,701] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [5308,5202,5306,5302,5293,5495,5567,6200,6198,5690,5694,6201,6204] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [6205,5180,5182,6083,6206,6207,6099,5308,5202,5148,5163,6106,6095,6201,6204,6200,6199,6066] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [1166,1171,1052,1053,1076,1172,1174,123,1173,124,1065,1066,1067,1069,96,97,99,129,130,104,105,146,262] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [1188,1189,1190,1196,1197,120,353,352,1036,123,122,124,119,121] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [5400,5448,5449,6235,6223,6227,5447,6244,6322,6318,6231,5394,5396,5423] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [3727,3728,3729,3737,3741,2876,2905,3725,3562,3846,3823,2882,2878,2934,3746,3827] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [4094,4095,4096,4098,4139,4165,4166,3871,3872,3873,4125,3594,3595,3596,3884,3257,3258,3604,3285,3870,3882] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [2196,2157,2197,2117,2119,856,861,864,828,2107,857,2118,2201,866,2217] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [2523,2521,2522,5032,5033,2703,2719,2721,3080,3081,5060] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1054,1058,1331,1333,1342,1344,1556,1557,1558,1330,1555,726,1060,1554,753,1586,1595,1585,725] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [3272,3275,3233,3266,3268,3264,3230,3231,4792,3277,4821,3302,3303,4791,4778,4779,4824,4818,4790] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [6727,6696,6331,6333,6332,6334,6335,6336,6728,6725,6330] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [7187,7228,5886,7233,7136,7139,7140,7141,5872,5880,5881,5884,5874,5876,5877,5871,5852,7142,7133,7146] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [3200,3641,3642,3644,3685,3686,3028,4733] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        