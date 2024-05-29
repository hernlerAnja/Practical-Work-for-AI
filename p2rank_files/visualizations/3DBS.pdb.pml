
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
        
        load "data/3DBS.pdb", protein
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
 
        load "data/3DBS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [469,1155,1089,1090,1091,1117,1130,1132,1133,1115,1125,1128,1116,3414,3415,4971,3421,3423,4970,5003,3386,3389,3390,3419,3420,3422,4996,4997,545,553,5036,5037,5039,5038,487,1119,4974,4975,5134,5142,5144,4486,4488,4489,4972,4973,973,4501,4502,4503,4504,4498,3413,3693,3724,3726,3723,3725,3727,3728,472,3410,3412,992,473,1102,4913,3451,3771,3772,4949,3408,3409,4950,4916,5095,5106,4998,5001,1156,5000,5002,1154,1164,5111,5113,5131,5128] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5264,5265,5251,5784,4681,4615,5866,4633,4865,5869,5870,5871,5872,5861,5864,5865,5756,4659,4625,4626,4600,4627,4842,4843,5863,5783,5248,5252,5120,5123,5125,5121,5205,5210,5224,5227,5221,5222,4909,4823,4822,4880,5206,4839] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [6337,6313,6315,6345,5695,6431,6432,6433,6372,6369,6370,6371,6393,5876,4933,6434,6457,6458,5710,5895,5703,5701,5892] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [980,4468,981,982,983,434,3682,3684,1253,452,453,1001,1003,4508,4006,1280,1282,4003,4005,4007,4004,4040,4531,4532,4038,4039,4530] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2638,2639,2653,3217,3192,2671,2709,3240,3242,2871,2872,2873,2877,2908,2909,2905,6296,6290,6294,2883,1624,3223,3230,3231,3229,1633,6321,6352,6320,2649,2643,2645,2644,2659,6407,6408,6409,6441,6443] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [5010,5014,5046,501,502,503,5006,5039,3138,3140,6248,6246,3148,3149,3150,3434,6271,3157,5008,3397,5007,3422,3396,3398,3142,3151,3155,6270] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5311,5312,5314,5372,5373,5744,5278,5361,5354,5355,6777,6779,5336,5337,5338,6778,5757,5758,5759,5279] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [217,216,209,2315,208,2323,2053,206,233,2059,2061,2087,2093,2143,2317,2055,232,240,3554,235,188,198,2319] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [4873,4871,4872,4901,6364,6362,6363,6367,6368,6373,3805,4889,3823,4890,3830,3833,3834,2286,2287,2285,3505,6356,6357,6355] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [973,4501,4502,4503,4504,4521,4522,4802,4801,972,4523,4488,5213,5214,5215,5212,5219,4792,4797,5237,5127] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5073,5074,5077,5613,5614,577,576,5583,1151,5091,5612,5570,5571,5609,5610] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [3379,3381,3382,459,467,457,475,478,479,480,445,446,3675,454,3669,460,3660,414,415,3662,3663] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1623,2256,2292,2295,2304,1600,1601,1639,1582,1583,1622,1624,1617,1619,2291,1964,1965,1570,1584,2262,1999] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1021,1018,791,1020,1032,1030,914,794,795,817,897,443] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [5640,5856,5835,5639,5649,5650,5654,5946] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1613,3227,3233,3243,3249,3253,1605,1608,1633,2938,2940,2941,2943,2896,3239] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4197,4195,4642,4853,4857,5178,4851] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4965,5646,5882,4966,5668,5671,5672,5644,5711,5667] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        