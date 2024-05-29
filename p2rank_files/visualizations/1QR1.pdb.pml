
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
        
        load "data/1QR1.pdb", protein
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
 
        load "data/1QR1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3390,3364,3359,3360,3361,3362,3363,3396,3400,3399,5101,5074,5094,5095,3384,3394,3395,5097,5114,5115,3215,3190,3217,3216,3191,3192,4875,3385,3386,3387,4874,4876,4877,4878,4885,3382,3376,5075,5076,5617,5619,5921,5920,5922,5923,5924,5058,5051,5055,5056,5865,5852,5861,5862,5866,5088,5941,5082,5083,5084,5085,5822,5825,5826,3403,3534,3535,5830,5963,5964,3530,5938] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [1925,1926,2468,1906,1963,1907,1909,2703,2770,2771,2772,2773,2774,2775,2712,2713,2717,67,2718,2721,2722,2725,209,210,211,212,213,214,215,235,247,226,227,233,236,238,1727,1933,1945,1946,1947,1948,1965,1966,66,68,797,921,922,41,42,43,241,246,251,254,2673,2676,2677,2779,2785,2789,2792,1934,1935,1936,250,381,2814,2815,2813,2436,385,386,2470,1902,2716,2715] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [163,164,166,167,186,188,303,2679,2682,2686,2690,2691,2684,2670,2671,2692,2784,86,2520,2783,2530,99,2522,2803,165] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [5952,5686,5932,5668,5669,5671,5683,5819,5820,5933,3316,5839,5840,5841,3313,3246,3247,3248,3314,3315,3452,3337,5835,3335,5679,5672,5673] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2349,2363,2364,2371,2372,2378,2375,2376,2377,1541,1542,1975,2347,1686,1973,1974,3070,3075,1557,3061,3062,3080,1671,1670,1672,1669,1667,2336] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [5498,5512,5520,5521,5526,5525,5524,6210,4690,4834,4835,4817,4818,4820,4821,4691,4688,6229,5123,5485,5496] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [642,610,666,667,727,730,635,636,641,104,156,637,639,157,108,109,142,158,725,117,122,118,739,105,750,752] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3190,3217,3216,3944,3946,3192,5852,5861,5862,5866,5867,5870,5874,5871,5863,4090] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5049,5051,5865,5902,5864,5881,5456,5634,5882] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [19,228,229,230,231,1465,1712,1471,8,2152,2153,2154,20,1495,1482,1472,1473,1720,1721,1722] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5301,5302,5303,3157,4871,3377,3378,3380,4869,4870,4620,4622,4631,4614,3166,3168,3150,3151,3169,4644] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5095,3394,3395,5096,5097,3399,4609,4610,4605,3558,4860,4862,4863,4859,4861,4607,4631,3549,3530,5088,5089,4653,5104,4630,4632] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [3255,3307,3253,3254,3759,3291,3761,3786,3791,3790,3888,3874,3815,3816,3876,3901,3271] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [3128,933,1272,3117,932] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [3456,3457,3297,3490,3762,3738,3703,3728,3729,3704,3304,3296] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1944,2367,1691,1692,1523,2362,2376,2377,1685,2353,1683] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [805,806,807,930,932,803,804,3107,3108,1272,3117] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [5857,5863,5869,5862,5866,5867,5870,5871,5893,5895,4090,3216,3944,3946,3943] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        