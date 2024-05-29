
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
        
        load "data/3L16.pdb", protein
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
 
        load "data/3L16.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3692,472,473,3693,1130,1132,1133,1102,1104,1129,1131,973,3409,4948,4949,4950,4972,4973,4974,4975,4971,3410,3413,3690,3689,991,992,451,5111,5113,5114,3726,3728,4509,4510,3686,4512,4466,4467,4468,4508,983,3727,4489,4488,4498,4486,4501,4502,4503,4504,3771,3772,4915,5134,5142,3725,5144,3451,3678,3679,3680,3682,4012,4014,453,434,452,982,435,3684,1253,1254,4040,4532,4030,4039,4006,4005,4003,1282,5127,5128,4913,4914,1087,5039,1090,1091,1089,1119,5037,1085,1086,1092,1093,1115,1117,3421,3422,3423,4970,5001,4996,4997,4998,4999,5000,5002,5003,5004,1153,1154,1155,1156,1128,1116,1125,1152,5032,5035,5036,545,553,5076,5065,5071] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5863,5864,5783,5784,4823,5227,5251,4679,4681,4614,5768,5865,5866,5869,5870,5871,5872,4659,4613,4842,4626,4843,5759,5265,5758,5760,4634,4625,4619,4622,5204,5205,5221,4822,4880,5206,5125,5210,5224,5222,4909,5228] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [6352,3217,3223,3228,3229,3230,3231,1624,1615,1633,3227,6321,6296,6407,6408,6409,2638,2639,2643,2649,6294,2644,2653,2665,2645,2670,2908,2909,2871,2872,2873,3240,3242,2905,2709,2710,3189,3190,3192,2671] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [6367,6368,6373,6374,4889,4871,4872,4873,4890,3827,6362,6363,6365,6366,3830,3833,3834,2285,2286,2287,3854,3852,3805,3823,6355,6356,6357,3505,2279] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3155,3157,3432,3434,3138,3397,5046,3396,3398,502,503,3140,3142,3365,3149,3151,3148,6248,5014,5006,6246,6270,6271,5007,5008] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2317,2055,2060,2061,2059,233,3553,3554,2143,217,2310,2315,2316,2318,2319,2322,2042,3849,188,2323,2328,3884,194,200,216,241,198,206,208,209] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [5710,5695,5701,5702,5703,6433,6434,5888,5889,5894,5896,5876,6460,6458,6315,6337,6345,6344,6432,4898,4900,6369,6370,6371,6372,4897,6393] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [6777,6778,6779,5278,5311,5312,5314,6767,5372,5301,5338,5336,5749,5276,5279,5743,5744,5760] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [5213,5215,5214,5219,5237,4488,4502,4503,4504,4521,4522,4523,973,972] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [2232,2246,2251,2274,6368,6374,6380,6384,2245,3830,2284,2286,2287,3854,3855,3852,2288,2293,2029,2030,3823,2273] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [791,1008,794,795,817,1020,1031,1032,914,904,929,443,1018] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3660,3662,420,380,387,457,3382,3672,3675,3669,445,459,460,414,419,415,417,454,3663,423,479,480] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [982,943,1003,1234,1253,1254,983,4736,4737,945,4738,4468,4530] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        