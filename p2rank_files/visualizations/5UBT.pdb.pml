
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
        
        load "data/5UBT.pdb", protein
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
 
        load "data/5UBT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3941,3942,5411,5412,4222,5410,3935,3944,3951,5379,5380,5383,5384,5387,5354,5353,4968,5655,4977,4978,4979,5570,5573,5566,5567,5375,5550,5557,4297,4298,3968,4251,3940,4221,4253,4255,5582] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [6167,5100,6176,6168,5113,5651,5167,5168,5658,5664,5667,5668,5563,5564,6165,5347,6169,6173,5263,5262,5282,5114,5146,5645,5646,5647,5319,5344,5281,6149,6083,6084,5699,5691,5682] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [4362,4363,2734,2737,2740,2741,2742,2875,2876,8109,8107,8140,8143,8144,8145,8146,8174,4364,8108,7375,8137,7406,7405,7377,7379,8102,8139,2888,2914,2917,2918,1980,2910,2732,2736,2717,2532,2535,2541,2922,7350,7352,7381,7382] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1420,1259,1268,1270,1475,1551,1722,1365,1253,1254,1255,1637,1403,1404,1406,1421,1426,1419,1548,1594,1597,1736,1478,1243] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [4063,4064,2398,3772,4040,4055,4056,4057,4058,4093,4098,4096,4068,4071,4087,3785,3787,3788,3732,3808,3809,3720,3726,3728,3761,3779,3771,3770,4041] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [5926,5955,6139,6350,6300,6303,6304,6306,6321,6352,6076,6160,5973,6030,6031,6159,5942,5953] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [4381,4383,815,853,855,842,843,840,841,2878,2881,2882,7437,2880,7463,845,810,812,7471,7472,846,7432,7433,7434,4380,4336,4382,879,2866,877,4384,878,4387,4389] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3796,3798,3588,3564,3046,3047,3044,3052,3061,3794,3781,3782,3783,3067,3567,3539,3563,3570,3540,1841,3062,3083,3806,3521,3616,3585] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5901,6349,6351,5898,5900,6091,5707,5778,5706,5750,6090,5749,5777,6092,5779,6339] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [4287,794,4314,797,4315,4582,4610,4580,4599,4605,4606,789,792,5594,5599,5602,4632,5626,5627,4601,4600] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [4211,1799,1800,1802,1798,4544,4951,4505,4508,1112,1113,1158,1160,1526,5008] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [3739,3740,3757,6857,6666,3713,6676,6678,6668,6702,6703,6726,6728,6818,3715,3224,3714,3767,3716,3488,3768,3756] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [2854,2577,2608,2665,2666,2575,2693,908,907,892,4070,2612,2618,2859,2862,893,2582,2856,4061] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2739,4034,4032,2836,2840,2841,2838,2825,4033,4369,4370,2844,2848,2732,2553,2726,2550,4376,4031,2734,4356] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [3786,3788,3789,2385,2387,2388,2639,2640,3798,3799,4093,4096,4087,4071,4073,2615] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3937,3939,3941,5412,4222,1177,1180,1178,5410,1188,3914,3950,3951,3910,1184,4220] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [2346,2349,3024,3038,2603,3027,3028,3055,2368,2602,1822,1824,2352,2354,1825,1836] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4487,4499,4507,1067,4489,1141,1142,4505,1032,1057] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        