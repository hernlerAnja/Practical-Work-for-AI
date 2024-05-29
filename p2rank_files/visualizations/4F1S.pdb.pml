
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
        
        load "data/4F1S.pdb", protein
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
 
        load "data/4F1S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3409,3410,3414,4972,1004,3384,3385,3416,3417,3418,443,1000,1002,1003,1015,1028,1037,1038,1041,1042,999,1005,1009,435,436,4915,3403,3408,3687,3719,3721,3723,3718,3405,4453,3688,4467,4468,4478,886,442,444,903,905,1017,3435,3446,3767,3404,4914,3438,3720,3722,4451,4454,5107,4476,3766,4971,5000,5002,5004,472,5003,5001,471,1029,524,1030,1032,5011,495,459,4940,5076,4938,4939,5078,4966,4936,4937,1043,1045,1046,5092,5093,5096,5099,4876,4878,4879,4880,4935,4961,4962,4963,4965,4968,4964,4967,1067,1069,1076,5036,5043,5030,515,516,523,525,5039,5042] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4808,5819,5820,5821,5822,5814,4787,5733,5734,4646,4788,5187,4645,4580,4644,4807,4606,4806,4623,4624,4578,5089,5813,5811,5193,5192,5217,4590,4591,5718,5706,5231,5216,5170,5195,5175,5189,5085,5087,5090,5086,5088,5169,5171,4846,4873,4874,4805] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [6392,2236,2238,2239,6364,2644,6389,6391,6270,6269,2639,2640,2633,2654,3212,3224,3226,2634,3187,3223,3237,2868,3225,3222,2904,1575,2666,2902,2903,6243,6245,2876,2878,2879,3218,6302,1563,1566,1562] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4472,4473,4477,4431,4432,893,895,4433,4474,4475,1166,4034,1193,1195,4009,4035,3677,3679,4000,1204,4001,3674,4468,4478,886,892,444,905,3681,3686,3688,423,424,914,405,406,3673,422,3675,1015] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2285,2288,2289,2290,2292,2295,159,2296,2301,204,188,165,171,2013,177,179,180,2019,2026,2114,187,3881,3885,3548,3549,3879,206,169,211,3524,2032,2030,3858,3889,2283,3852,3844,3860] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [5653,6342,6344,6336,6381,5645,5651,6407,6409,6380,6406,5660,5827,5826,5824,5825,6320,4896,6321,6286,4898,6264,6293,6294] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3146,6195,6197,4970,4971,473,5011,3133,3137,3393,3150,3429,6221,3427,3414,4972,4973,3392,3415,3152,3391,3144,3153,4975,4979,4974] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2984,2985,2986,3014,3016,3018,2988,1305,2470,2471,2474,2476,3251,2955,2957,2961,2991,1306,3267,3268,2478,1855,2088,2453,2452,2457,2462,2466,1849,1852,1853,1843,1846,1837,1302,3256,3257,3259] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [6327,2260,6311,6313,6328,6305,6298,2246,4855,6304,3500,6306,2252,2259,3818,3825,3828,3829,3847] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [6708,5304,6724,6726,6728,5276,5321,5266,6679,5689,6683,5702,5707,5709,5244,5243,5278,5708] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [883,884,885,1017,1016,871,1108,1112,1094,1013,1046,1089,1090,1086] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [510,511,513,5039,5040,5041,5042,556,557,1066,5533,5056,5560,5562,5523,5563,5564] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [5623,5594,5596,5661,5832,4930,4931] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4922,4923,5649,6250,6254,6260,6225,6255,6258,6229,6421] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        