
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
        
        load "data/7KKE.pdb", protein
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
 
        load "data/7KKE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4919,4945,4943,4944,3420,3421,3423,3424,3425,3413,3415,3410,3411,3412,3414,3388,3422,3391,3435,967,1123,1124,1126,1127,1119,1122,3694,3695,986,466,467,1081,1085,1080,1096,1098,1125,3772,3727,3729,3730,3725,3726,3728,3774,4887,3724,4477,4491,4493,4492,3773,5113,4984,4940,4977,4978,4974,5016,3436,6217,6219,6242,1109,1110,1118,1111,5005,5007,5006,5008,5009,547,3392,495,496,494,3397,3158,3144,3398,3399,3400,1084,1113,3140,3153,3151,4908,5081,4969,4970,4971,5083,5084,4972,5065,5098,5101,5104,4883,4968,1148,1149,1150,4967,537,539,1146] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5217,5231,5745,5746,5253,5823,5826,5831,5832,5834,5721,5722,4614,4603,4601,4604,4605,4609,4610,4668,4670,4835,4615,5218,5194,5197,5180,5187,5192,4793,5092,5825,5094,5175,4812,4813,5176] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [996,1247,3682,443,444,3684,428,4499,4501,4502,4496,4497,4498,446,447,973,3681,3716,4010,4455,4456,4457,4036,4520,977,1285,3686,1276,4002,4035,445,3693,986] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1619,1620,3230,3231,3233,6321,6323,3225,6266,3219,3232,3243,3244,2273,2274,2279,2280,2306,2307,1621,1622,2640,2883,3194,2875,2874,2910,2911,2651,6291,6374,6375,6405,6406,6376,2260,6363,2647,2655,2645] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [6396,6397,6283,6285,6394,6420,6398,4903,6307,5671,5673,5657,6342,6358,4867,5665,5866,5864,5865,6421] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2318,2319,2327,208,209,217,216,2322,3880,2323,3556,198,230,2332,2320,2321,234,2065,231,2063,2059] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1894,2993,2992,3022,3024,1891,2991,2995,1362,2488,2493,2495,1359,2966,2962,2969,2998,3259,3258,3275,3025,3263,1903,1897,1901,2483,2484,2120,1885] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [5818,5601,5602,5603,5611,5612,5589,5616,5796,5919,5916] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4860,6348,2278,6347,2277,6327,2291,2290,3807,3507,3835,3825] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [5543,5545,5043,5061,5571,5572,5573,5574,5575,5535,580,1145,5044,5047,533,5576,5536] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [5706,5705,6768,5278,5279,6767,5245,5271,5243,5244,5280,6738,6740,5721] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3695,986,465,467,967,1096,1098,4492] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1727,1729,2010,1527,1725,1491,2020,2022,1489,1490,1502,1726,1728,1730] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1611,1610,1909,3511,3521,3522,3528,3529,3532,3533,2305,2307,1922,3249,3250] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4446,4094,4095,4444,4530,4414,4419,4536,4541,4698] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        