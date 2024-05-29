
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
        
        load "data/3ZW3.pdb", protein
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
 
        load "data/3ZW3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [467,468,1073,1075,1076,1077,1072,1088,1090,1110,1111,1114,1101,3359,3371,4850,3372,3373,4937,4938,4939,519,548,1105,1102,1103,4904,4907,496,497,3339,3340,3360,482,494,483,4849,3363,3642,3643,977,3678,3677,4402,4403,4404,959,3401,3394,3721,3393,3674,3676,4386,4388,4389,3673,5042,4401,4412,4413,3720,3722,1118,5027,4871,4872,4873,4874,4875,5011,5013,5014,4813,5034,5028,5031,4995,1140,1141,1142,1116,1150,1138,4870,4896,4903,4897,4898,4901] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5761,5763,5764,5683,5684,4723,5127,5151,4581,4743,5765,5766,5769,5770,5771,5772,4514,4515,4742,4741,4541,4559,5659,5668,5656,5165,5186,5187,5188,4516,4518,4519,4525,4526,5160,5021,5023,5110,5104,5105,5106,5117,5122,5124,4809,5130,5022,5020,5025] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [3630,3632,3963,3962,968,969,3634,3990,1239,3956,1268,1276,3629,4409,4410,4366,4367,4368,4407,4408,4412,4413,966,4431,4432,3662,3664,3989,3987,429,447,3628,965,3636,3640,3635,3641,446,977,448] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [6221,3138,3167,3139,3140,2858,2859,3178,3179,3180,3181,2659,2660,2823,2834,2621,2827,2831,2826,2589,3142,3191,2822,3192,2855,2821,1571,1573,6277,3173,2594,2595,6343,2588,2593,2599,6245,6246,6368,2206,6331,6332,6335,6336,6339,6340,6341,2213] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [204,189,195,210,211,212,2268,2269,2273,203,2265,2093,3799,3836,2272,3504,235,236,230,3835,3834,183,194,2267,2005,2266,228,2011,2009,2030,2037,3503,3840,2260] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [4907,4906,4946,496,497,3368,3369,3370,3383,4908,6194,6197,6171,6173,3098,3099,3108,3384,3348,498,3101,3094,3315,3105,3107,3346,3347,4914] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [4773,4790,6282,6289,6303,6304,6281,2237,2221,2222,2224,6274,6302,3773,3455,3780,3783,3784,2235,3804,2230,2236,3802,2225,3755] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [5179,5210,5214,5643,5644,6700,5271,5177,5178,6702,5239,5238,5660,5657] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [6382,6383,5833,5835,6320,6321,6359,5595,5601,5603,5813,6238,6240,6270,6356] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [5658,5659,5660,5668,5656,5796,5797,4535,4533,4534,4525,4526,4743,5769,5770,5772,5794,5764,4765,4741,4541,4543,4559] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5113,5114,5115,4688,4697,4702,4704,4707,5119,4393,5112,4395,4402,4404,959,4401,4422,4388] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [6692,5795,5796,5797,5639,5660,5667,4535,5772,5794,5642,6683,6690,6716] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [2940,2917,2942,2943,3205,2972,2968,2970,2973,1857,1845,1851,1861,2425,2427,2431,2430,1854,1863,3215] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1590,1549,1551,1569,1574,1550,1915,1896,1898,1521,1532,1533,1534,2241,2246] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [3185,3459,3476,3197,3198,3480,1562,1563,1869,3477,1880,1881,1882,1566,3171,2254,2253] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3812,3840,3843,3470,3814,3844,2260,3503,2262,2267,3799,3836,2272,3504,3834,2268,2269] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5543,5572,5781,5783,5545,4866,4865] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4358,4359,4734,4732,4715] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        