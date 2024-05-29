
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
        
        load "data/4FHJ.pdb", protein
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
 
        load "data/4FHJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [449,450,1001,1044,1046,1016,1018,1043,4681,3199,3211,4702,4703,4704,4705,3200,3562,4680,3561,4706,3482,3513,3514,3516,3517,3518,3515,4226,3483,4240,4241,3203,3241,4865,4875,4648,3212,3213,4701,4727,4728,4734,4738,4770,1038,1039,1042,1029,1030,1068,1031,1005,3179,3180,1003,1004,478,480,1033,4768,4769,517,526,501,518,4729,4731,4732,4733,4844,4845,4826,1070,4842,4669,4858,4859,4671,4862,1069,4807] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5573,5576,4574,5471,5568,5464,4413,4415,4352,4363,4364,4393,4357,4351,4337,4338,4991,4992,5487,4978,5488,5565,5460,5567,4937,4932,4951,4954,4949,4640,4851,4852,4854,4856,5569,4554,4933,4853,4855,4957] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4246,4205,4206,895,896,897,4268,1194,1167,1196,1173,4270,3799,3474,3825,1204,1205,3791,3502,3504,4204,3824,3479,3481,3470,906,428,429,430,905,3472,411,894,915,917,3476,3480,3468,3469,4248,4245,4247] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3019,3020,3021,3007,5986,1482,6042,6043,3013,2447,2446,6011,6102,6065,6074,2457,2453,2124,2452,2467] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2173,2177,189,190,2175,197,198,214,175,187,2181,2186,2180,3343,3344,216,221,222,3669,169,3670,179,178,1929,1923,1927] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2941,2945,2947,3186,3187,3222,3188,479,2932,3224,5962,4745,3209,4739,3210,5936,5938,2928,4777,2939,2938,3208,4714] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [2444,2447,2446,2461,2479,2681,3032,2713,2716,2717,2979,2980,2982,2691,3019,3020,3021,3017,3007,5986,3030,2457] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1017,1090,1116,1112,1113,1114,1047,1018,878,886,4261,872,4497,4502,4492,4496,1087,1095,1053,1091] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [5005,5006,5034,5035,5036,5037,6445,6448,6444,5447,5448,5069,6421,6455,5065,5083,6419,6413,5462,5463,5464] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2131,2132,4621,3617,4604,6054,6058,6057,6047,2143,2145,3295,2144,3613,3623,3624,3620,3637] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [6035,6003,6005,6090,6091,5399,4664,6060,6062,5580,5604,5605,5407,5405,6117,6119,5414] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [922,932,767,828,842,821,395,931,420,387,739,741,744,740,745,934,935] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [970,973,563,711,712,1060,1061,595,1025] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3017,3023,2748,2749,2751,3043,2746,1468,3033,3039,1473,1463,2704,2713] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        