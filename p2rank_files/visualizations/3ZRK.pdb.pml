
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
        
        load "data/3ZRK.pdb", protein
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
 
        load "data/3ZRK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [238,239,240,258,370,1250,784,1249,759,367,369,371,466,764,583,775,205,207,354,256,257,791,777,203,209,810,1221,1233,1222,1337,1339,1331,1330,1336,1332,1333] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3207,3208,3209,3053,3074,3076,3077,3078,3096,3628,3192,3095,3041,3042,3047,3094,4201,4202,4205,4206,4102,4208,3314,4118,4119,3644,3646,3679,3045,3439,3633,3653,3660,4199,4200,4090,4091] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [5452,3851,3852,3853,4139,3764,5442,5449,3726,3727,3762,3751,3753,4125,4127,4137,4140,3887,3889,3848,3849,3850] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2490,2491,2492,2763,2445,2448,5591,2760,2462,2457,5315,5316,5634,5614,5318,5295,2514,2517,2518,5268,5298,5299,5300,5592,5267,5296,5297] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3217,3606,2861,3502,3503,3520,3218,3104,3106,3107,3010,3011,3012,2987,2989,3200,2847,2848,3199] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [5386,5359,5362,2315,5360,5361,5315,5387,5632,5633,5634,5327,5331,2454,2397,2398,2399,2425,2423,2426,2427,2428,2429,2430,2742,2743,2744,2722,2444,2445,2446,2448,2462,2457,5384,5358] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [982,983,984,893,895,882,1270,2580,2582,1268,1271,858,1018,1020,1257,857] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [18,158,160,19,32,268,183,267,736,379,380,665,646,265,361,362,647] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2394,2395,2401,2406,1640,2384,1628,1630,1636,2713,2714,1627,1629,2413,1124,1126,1634,1635,1123,1148] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4526,4507,4508,4513,4522,4523,4512,4515,3993,3991,3992,5265,5271,5274,5276,3995,5283,5583,5584,5254] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [5117,2174,5129,2168,2140,1904,2162,2144,2341,2176,1907,1908,2329] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [5018,5041,4788,4792,4790,5014,5211,5040,5026,5032,5038,2259,2242,2231,2247] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4207,4102,4061,4062,4208,4078,4079,4372,3072,4229] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        