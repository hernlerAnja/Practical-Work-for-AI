
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
        
        load "data/4YU2.pdb", protein
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
 
        load "data/4YU2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5469,5470,2345,2369,2370,2371,2372,2373,5591,5592,5594,5593,2628,2629,2632,5436,5437,5630,5467,5468,5590,5614,5615,5616,5621,5622,5628,5556,5558,5619,2598,2599,2600,2385,2386,2631,2003,2343,1996,2001,2007,5631,5636,5552,5496] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3111,3169,3115,3167,3168,3281,3750,3751,3738,8890,8891,8892,3117,4147,3123,3130,3148,3149,3296,3729,3733,3734,3294,3730,3732,4283,4280,3298,4170,4171,4158,4273,4274,4275,4186,3586,3758,4160,4159,3785,3813,4185,4187,3763,3752,3753,3754,3755,3756,3757] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2790,5199,5200,5201,5460,2608,5458,2607,2785,2792,2793,2761,2799,2801,2727,2729,2638,2639,2640,2641,2762,2763,2764,2765,2766,2767,2768,2667,2707,5198,5214,5215,5217,5428,5429,2786,2802,2807,5172,5173,4858,4854,5174,4847,5461,5202,5206] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [2665,2666,2667,2708,2709,2710,2661,2668,2032,2672,2675,2684,2687,2680,2639,2641,2628,5469,5470,5458,5468,5490,5494,5497,5496,5495,5513,5516,5538,5536,5537,5539,4883,5504,5501,4899,2048,5456,5457] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [911,909,1339,1340,1428,1311,938,740,910,891,881,1426,1323,302,301,276,449,882,884,574,1429,1433,1434,1436,916,268,264,908,434,904,905,265,320,321,322,270,273] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [9829,9830,9924,9926,9399,9401,8927,9381,9801,9813,9927,9928,9931,9229,9376,8769,8794,8795,8813,8815,8942,8944,8814,9373,9375,9377,9428,9406,8757,9394,9397,9398,8761,9395,8763] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [6976,5925,5929,5931,5981,5982,6603,5934,6569,6570,6581,6568,6546,6095,6397,6574,6576,7005,7004,7091,7092,7093,6556,5937,6112,5963,5962,6549,6551,6108,5983,6110,6988,7094,7095,6547,6548,6550,6552,6231] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4458,4459,4460,4718,4719,4455,4470,4457,4674,4153,4471,4162,4163,4456,4439,4450,4437,4438,3869,3871,3802,3804,3870,3872,3873,3874,3800,4708,3828,4703,8830,8908,8910,8913,8902,8894,8887,8845,8831,8739] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [8784,9955,9933,9947,9948,9032,9033,9949,9030,8960,9037,9038,9041,9066,9771,9773,9007,9004,9934,8785,8786,8789,8792,9790,8783,9772] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [10118,10119,10103,10105,10107,10322,10366,10104,10106,10108,9804,9806,9788,9805,10085,10086,10087,9443,9445,9447] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [545,544,1450,1451,511,539,540,573,1435,1449,1457,1283,1436,296,290,292,293,299,291,514,516] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2003,2009,2343,2675,2015,2677,1996,2001,2004,2007,5469,5470,2372,5536,5537,5539] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [7270,6620,6618,6980,6981,7485,7268,7282,7269,7271,7249,7281,7266,7267,7248,6963] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1619,1606,1608,1609,1823,1867,1868,1315,1316,955,1586,1587,1605,1607,1588] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3137,3138,3139,3140,3143,3420,3314,3384,3386,3387,3391,3392,4304,4282,4296,4283,4298,3361,3363,3313,3358] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        