
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
        
        load "data/3ML9.pdb", protein
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
 
        load "data/3ML9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [467,468,1094,1096,1097,1128,1068,1092,1093,4950,4968,4971,3450,3454,3455,3456,3458,4973,4972,3486,4913,3444,4949,4974,4975,3761,3763,4504,937,4502,4503,3421,3445,3424,3448,3447,3727,3728,3759,956,3443,3449,5134,5144,3760,3762,4486,4488,4489,4501,3805,3807,4917,3758,5038,5039,1119,1120,1088,1089,1080,1079,1081,4970,3457,4996,5003,5006,5008,4997,540,519,538,520,548,496,1053,1054,3425,482,1055,1083,5001,5095,5113,5114,4938,5111,5214,5127,5215,5128,5131,4998,5000,5002,5065,5077] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5760,4612,4613,4625,4644,5893,5894,5896,5897,6843,6844,4626,4633,4634,4635,4632,4643,5924,5767,5768,5756,5864,5265,5783,5784,5251,5757,5758,6845,5125,5861,4823,5206,5222,5224,5227,4681,4679,4907,5885,4908,5865,4909,5869,5870,5871,5872,5123,5205,5210,4880,4906,4862,4863,4864,4842,4843,4865,4822,4614,5863,5228,5252,5846] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [3264,3265,1590,1591,1592,1593,3266,2944,3263,2745,6360,6393,3258,6392,3252,6330,6336,3275,3277,2253,2255,2688,2700,2706,2912,2943,2916,2744,2672,2673,2674,3227,2908,2906,2907,2942,6361,6483,6456,6457,6458,6454,2684,2243,2252,2679,2680] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [4466,4073,4508,946,947,4467,4468,4074,4531,3713,3714,3747,4509,3749,4111,4049,4072,3715,4039,4040,4042,4043,4048,4041,1223,1244,1246,1254,429,430,1217,1255,3719,1253,447,965,3721] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [5695,5701,5703,5913,6500,6471,6472,6474,6497,6498,4933,5699,6385,6353,6355,6435,6436,5932] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [6851,6852,5311,5346,6809,6770,6810,6813,6815,5372,5373,6817,5301,5370,5299,5306,5278,5307,5310,5354,5347,6819,5343,5333,5745,5277,5749,5279,5757,5758,5759,5760,6775] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [3467,3400,3192,498,3431,3432,3433,496,497,3173,3183,3184,3185,3186,3190,4984,5014,3469,6311,5006,5007,5008,6310,3193,6286,6288,5044,5046,3454,3455] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2311,2312,2315,2307,203,204,2308,236,3589,2130,212,2316,2321,201,194,3919,183,3918,3920,2310,2309,228,2042,2046,2048] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3291,3053,3056,3058,3308,1876,3054,2509,2510,2511,1340,2500,1337,3002,1873,1870,3024,3025,3026,3028,3031,3000,3001,2501,2499,1882,2104,2105,1880,1864] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [4873,6404,6419,6418,6396,6397,4890,3540,3840,6389,2267,2280,2278,2279,4889,3858,3868,3869,3887] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [922,934,935,936,937,4764,4765,1067,1139,1141,1103,1145,1097,1068,1095,1137,1140] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4504,937,4502,1096,1097,4495,4501,4802,4522,5214,5215,5212,4804,4807,5219,5238,4792] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [922,934,936,937,4764,4770,4522,4523,4801,928,4724,4725,4757,4792,4783,4788] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [908,909,4736,4738,1198,945,946,947,4531,4532,1217,907,967] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1067,1139,1141,1064,1103,1145,1095,922,4765,917,1137] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1994,1993,1485,1486,1488,1489,2004,1699,1701,2385,1700,1468,1467,1469,1480,2005,2224] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5583,5091,1115,5074,5075,5073,5076,5077,5571,5576,5579,5580,5609,5610,5612,5611,5613,5614,5573,1117,1118] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [5564,5422,6053,5538,5548,6131,5547,6042,6066] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        