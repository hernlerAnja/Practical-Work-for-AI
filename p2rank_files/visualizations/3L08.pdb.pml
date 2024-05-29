
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
        
        load "data/3L08.pdb", protein
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
 
        load "data/3L08.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5050,4913,4939,4940,5052,5053,4941,1114,4877,4888,4889,4909,4910,4911,4937,4914,4912,1088,1090,1091,1086,1083,5073,4425,4428,4427,4443,4879,5066,5067,5070,3446,4856,5015,1112,1113,1073,1074,548,4936,4942,4976,4977,4975,540,538,547,549,5004,3405,3417,3418,3688,467,3384,3408,3687,3435,3403,3404,3409,3410,3414,3415,3416,931,466,468,949,1045,1050,1051,1060,1062,948,1044,3718,3719,3720,3721,3722,3723,4449,4441,4442,4451,4452,3717,3766,3767,3765,3438,497,482,496,1049,3385,1047,1048,1075,1077,1082,4978] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5673,5775,5776,5777,5767,5770,5689,5690,5190,4620,4847,4848,5771,5772,5778,5062,5064,5156,5163,5166,5161,4802,4804,4780,4782,4580,4781,4762,4564,4565,4598,4551,4554,5769,5169,5167,5665,5662,5205,5075,5059,5060,5144,5149,4846,5145,4820] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2627,2632,2634,2638,6376,6379,2628,2633,2648,6369,6368,6367,2238,2239,2240,6342,6212,6248,2235,2236,2237,2642,2879,2654,1563,3222,3223,3224,3225,3226,2903,2904,3237,1578,1581,2704,2705,3212,3184,6222,3235,3187,2868,2660] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [939,940,941,4407,4471,3709,448,4035,4405,4406,3675,4009,3674,3707,4447,4448,3677,1248,3679,429,4001,1211,1212,1240,4032,4034,447,961] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3391,3392,3393,497,496,3146,3150,3152,3144,3137,495,3133,3427,3429,3414,4953,4944,4946,4947,4945,6194,6169,6171,4985] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [5609,5819,6361,5807,6323,6242,6385,6358,6384,5601,5607,6240,6264,6272] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [5279,6702,6704,5278,5245,5246,5249,5261,5264,5267,5657,5218,5217,5649,5650,5666] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3252,3250,3266,3268,3016,3018,2454,2435,2985,2456,1324,2986,2955,2958,2959,3256,3261,3267,1855,1859,1860,2084,2431,2430,1849,1842,1843,1826] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4829,4812,6305,6306,2259,2261,2260,3818,3847,6282,6283,6284,6291,2247,3829,3828,3500] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2220,2221,2227,1571,1572,2269,2270,1912,1913,1519,2268,2266,1567,1588,1531,1532,1547,1549,1895,1548,2265,2278,1896] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [202,189,195,203,211,2293,204,2297,2302,3878,3879,3880,236,193,183,2289,3549] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4460,4461,4740,4705,4697,4663,4443,4709,4722,4462,920,922,4696,4664,930,916,931] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [5474,5481,5520,5477,5478,5479,5480,5516,5518,5012,5519,5030,5482,5488,5489,5016,1109,534,581,1118] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2023,2289,203,211,204,2029] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        