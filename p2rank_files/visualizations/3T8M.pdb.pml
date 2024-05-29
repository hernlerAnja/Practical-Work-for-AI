
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
        
        load "data/3T8M.pdb", protein
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
 
        load "data/3T8M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [472,3410,465,471,473,989,990,1096,1102,1104,3692,3723,3724,3725,3726,3727,3728,3693,4498,4502,4503,4512,4513,971,973,3413,992,3409,3414,3772,3771,5144,3389,3390,5039,1090,1091,1124,1128,1092,1093,1117,3419,3421,5007,3386,3420,3422,3423,464,5037,5038,1119,501,502,4970,4972,4973,4974,4975,5111,5114,5000,5001,5002,5095,1131,1130,1132,1133,1163,1164,1129,4949,4950,4489,5127,5128,5131,4486,4488,4504,4913,5134,5142,3451,4997,4998,4999,5003,5004,1152,1155,1156,1125,5075,5076,5077,1153,545,5035,543,553,5065] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5866,5869,5870,5872,5123,5125,5861,5863,5864,5206,5224,5230,5783,5784,5217,4823,5221,5227,5251,4681,5222,5885,4907,4908,4909,5871,4615,4822,4841,4626,4612,4614,4863,4865,4842,4843,5756,5265,4625,5120,5121,5205,5210,4869,4880] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [4466,4467,4468,4531,3684,4006,4040,4532,4037,4039,4003,3712,3714,4013,1282,4508,4030,434,3682,1253,3680,3679,453,982,981,983,4507,4509] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [5695,5710,5703,5701,6313,6315,6431,6432,6433,6457,6458,5889,5894,5896,5876,6435,6337,4931,4933,6343,6344,6345,6369,6370,6393,6371,6372,4897] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [6320,6321,2649,6296,6352,6409,6408,6407,6443,1623,2636,2638,2643,2644,2645,2653,2659,6287,2639,2883,3223,3217,3228,3229,3230,3227,3231,3192,2873,3240,3242,2871,2872,2905,2908,2909,2670,2671,2884,2881] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [206,208,194,200,216,215,217,2319,188,2315,2323,209,2143,3884,241,3554,198,2061,2059,233,2055,3553] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [5046,502,503,3138,3149,3432,3434,5007,3396,3397,3398,3365,3151,3155,3157,6270,3142,5014,5008,6271,6247,6249] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [4890,3823,2287,2286,4888,4889,2285,3854,3852,4873,4871,4872,6349,6355,6357,6363,6368,6367,6374,2274,6362,6364,2279,3505,3834,3830,3833] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [5372,5373,5299,5306,5307,5311,5743,6775,6777,5314,6778,6779,5301,5355,5357,5336,5338,5279] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4493,5213,5214,5215,5219,4504,4807,4522,4802,4801,4792,4797,4491,4488,5111,1132,1133,4502,4503,972,973,4521,4523,5231] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2991,3256,2989,2990,3021,3023,3019,2960,2962,2964,2965,2967,2117,1907,1911,2476,2477,2471,2475,1901,1895,2993,2996] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [2232,2246,2251,2284,2029,2030,3854,3855,3852,3823,2287,2286,6368,6374,2274,2273,6380,6384,3830,3833,3834,2250] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [4762,1132,1176,1177,1175,4765,1103,1104,1201,1198,1199,958,959,972,1181] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4801,4783,4792,4784,4770,4522,958,962,964,4757,4758,972,973,4521,4523,4724] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [5389,6042,6043,6046,6670,6051,6673,6675,5995,6035,6671,5966,5997,5969,5970] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5946,5640,5649,5650,5625,5856,5835] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5711,5671,5882,5646,5644,5667,5668,4965,4966] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        