
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
        
        load "data/8GUW.pdb", protein
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
 
        load "data/8GUW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2897,3660,3658,3651,3659,3569,2856,2855,2858,3131,2738,2893,2894,2865,2854,2904,2929,3024,2578,2590,2592,2593,2574,2739,2571,2829,2583,2752,2796,2737,2753,2754,2828,2830] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1432,1433,1434,1435,704,1425,1426,1427,975,781,1360,927,1361,945,948,966,386,387,326,327,330,328,339,922,513,514,497,1344,1332] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [5871,5024,5025,5433,5292,5434,5438,4896,4841,4897,5008,5943,5936,5937,5939,5940,5850,5938,4898,5855,5843,5486,5872,4838,4844,4839,4842,5870,5477,5456,5459,5460,5450,5452] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2739,2551,2552,2558,2559,3191,2610,2611,2612,2560,2553,2555,3200,3557,3658,3650,3651,3653,3657,3659,3006,3652,3584,3585,3586,3170,3173,3152,2722,3147,3148,2929] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [670,671,672,1433,1434,1435,1448,513,528,529,638,514,906,349,358,346,633,367,365,603,571,605,602] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [4876,4878,5040,5023,5945,5215,5025,5182,5943,5937,4879,5183,5959,5039,5151,5418,5114,5116,5141,5144,5082] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [650,847,848,849,548,549,845,846,886,643,677,646,647,649,679,824,826,639,641,887,885,907,609,610,612,614] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4090,2153,2154,2140,2147,2148,2146,4051,1619,1625,1628,6037,6038,4079,4080,4081,4083,1623,4077,4078,1626,1627,1634,1638,1639,1640,1641,4049,4052,1595] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5160,5159,5161,5358,5360,5356,5357,5359,4718,4720,5198,5335,5337,5338,587,589] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2867,2863,2864,2866,2872,3110,3111,3072,3074,3070,3071,3132,3057,3046,2832,2834,2873,3049,3051,2902,2903,2904,3112,2772,2774] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [5397,5398,5188,5150,5152,5190,5189,5335,5337,5332,5058,5124,5160,5159,5161,5358,5360,5356,5357,5359,5060] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [5316,5318,5319,5320,4984,5002,5425,4941,4942,4793,4986,4987,4752,4753] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4015,3987,3988,3942,3977,1514,1541,1532,1543,3560,3561,3562,3216,3218,1516] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [805,241,242,914,806,492,473,430,428,429,807] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4375,3835,3845,3868,4381,4382,4380,4376,3456,3454] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2578,2572,2574,2739,2570,2571,2583,2737,2753,2597,2736,2612] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        