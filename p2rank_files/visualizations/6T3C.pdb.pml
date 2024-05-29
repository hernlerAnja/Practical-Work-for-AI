
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
        
        load "data/6T3C.pdb", protein
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
 
        load "data/6T3C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4226,4227,4240,4241,4242,1046,1047,887,1042,1044,4648,4865,4875,4680,4681,4702,4703,4704,4705,4706,3199,3200,3203,449,3482,3483,3211,450,906,1016,1001,1006,1007,3513,3515,3516,3517,3518,3562,3514,3213,4729,3212,1068,1069,4727,4728,4770,4768,4769,1029,1030,1039,1000,1031,526,4701,4734,4738,4735,516,518,501,480,1003,1005,3179,999,1004,464,478,465,1033,4842,4844,4845,4859,4849,4862,4731,4732,4733,4826,4807,4796] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5468,4363,4574,4364,4393,4357,5015,5013,4350,4351,4352,4337,5578,5580,4992,5491,5492,4978,5464,5572,5577,4949,4931,4933,4554,4413,4415,5579,4573,4851,4932,4937,4957,4951,4955,4954,4852,4854,5569,5571,5573,4640,5574] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4206,3825,4205,3799,3790,3824,3791,1196,3788,4204,4268,4270,3815,897,429,915,917,411,412,1167,1168,3469,3476,3468,3470,3472,3474,4245,4246,4247] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2939,2928,2938,2940,2941,2945,2947,3186,480,3187,3188,478,479,2932,4745,3224,5963,5966,4738,4739,4735,4737,4770,4768,4769,4777,5942,5940] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3013,3019,3020,3021,6046,6015,3007,1482,2446,5990,6081,6083,6084,6085,6086,6087,6113,2114,2457,2453,6119] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [4662,6031,4664,5403,6009,6039,5418,6102,6038,6101,6127,5584,6066,6064,6128,5606,5608,5609,5610,5411] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [2446,2461,2689,2691,2692,2478,2479,2518,2982,2680,2713,2716,2717,2715,2681,2979,2679,3032,3017,3018,3019,3020,3021,3031,1473,1487,3007,2457] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [2174,2175,1916,1923,1929,2173,214,1927,2172,2176,2177,1910,3343,3344,211,216,2180,2181,3669,169,179,187,189,190,197,221] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5452,5006,5038,5039,5040,6459,6456,5459,5087,5003,5005,5089,5451,5073,6429,6431,5065,6466,5069,5467,5468,5466] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4231,4226,4239,4240,4241,4242,1046,1047,887,4260,4261,4532,4533,4941,4946,4963,4940,4942,4842,4535,4538,4523,4528] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [4620,4621,3295,3595,3613,3615,3617,3620,3623,3624,2131,2145,2144,3637,6050,6051,4603,4604,6062,2132,4899,6058] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [450,906,1016,4250,885,4241,887] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1458,1481,2162,1459,1494,2152,2153,2149,1802,1818,1819,2150,1913,2121,2123,2154] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [452,3172,3465,423,434,392,394,3450,390,391,422,431,436,437,395,3452,3453,455,458] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3643,3671,3634,3642,3647,3649,2168,3679,2180,3343,3344,3678,3319,2174,2175,2170,2176,2177,3669,3310] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [4483,4481,4484,4486,648,636,638,874,634,635,4493,4490,1132] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        