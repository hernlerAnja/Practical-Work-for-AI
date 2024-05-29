
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
        
        load "data/6FYK.pdb", protein
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
 
        load "data/6FYK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1321,1591,1583,1584,1585,1588,1581,1582,743,744,884,886,883,885,887,888,882,1298,1297,1279,1281,1612,1589,1590,1604,1605,1606,456,586,553,957,1310,926,930,1309,1337,917,909,1336,892,906,910,912,1338,280,287,288,304,306,308,330,297,296,302,526,528,476,454,521,554,552,523,555,556,514,268,269,270,272,274,275,276,278,329,439,919] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [6732,6733,6735,6737,6738,6594,7188,6759,6767,6766,6742,6756,6306,7439,7441,6156,6302,6304,6305,6130,6137,6138,6158,6126,6178,6180,6125,6128,6179,6754,6120,6122,6119,6289,7431,7432,7433,7159,7187,7186,6762,7434,7438,7171] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2504,2505,2506,2507,2542,4465,4452,4454,4447,4005,4008,4442,2537,2560,2571,3994,2479,3997,3999,2553,2007,2008,2009,5831,5832,5833,3998,2487,2488,2495,2496,2468,2503,4325,2154,4324,4032,4033,4034,4035,4036,4068,4471,4466,5849,5824,4022,3993,4031,4477] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3660,3661,4262,4507,4508,4509,4264,3836,3832,3835,3843,3845,4263,4235,4236,3852,3250,3251,3190,3196,3197,3199,3201,3202,3805,3807,3356,3830,3193,3191,4514,4515,4517,3208,3229,3225,3227,3808,3504,4510,3371,3373,4511,4247] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4516,4517,3212,3223,3225,3227,3217,3373,3393,4530,4205,4648,4207,4223,4247,4224,4531,4532,4538,3443,3469,3470,3471,3472] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3976,3979,3998,2484,2481,2441,2442,4354,4358,4359,4360,4376,4375,4377,3999,3980,3981,4339,4440,4442,4357,4423,2467,2468,2469,2473,2440,4343,4353,4344,4324,4340,3975,3966,3982,3959,3961] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [6404,7454,7456,6154,6306,6436,7440,7441,7455,6146,6376,6152,6405,6406,6326,7462,7131] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1744,2016,945,947,949,1963,1312,1313,1314,1742,1723,1018] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3871,3873,3875,4239,4969,4240,3942,3944,4889,4942,4924,4649,4680,4681,4668,4670] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [7456,6154,7440,7441,7455,6146,6147,6156,6152,7131,7462,7148,7147] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [7978,8305,8306,7870,8348,8338,8339,8341,8014,8344,8347,7890,7855,7863,7857,8405] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [7163,7164,7866,7893,7860,7604,7605,7813,6797,6799,6868,7592,7594,7573] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [6418,3558,3591,3592,6389,6390,4167,6706,6660,6661,6662,6663,6417,3583] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [7520,1423,1425,7538,7537,7517,7516,1442,1424,6366,6401,6404,7456,6428,6427,6395,6400,6364,7462,7458,7461,1420,1421,1422] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [2789,2784,2790,2788,2787,2798,1187,1862,1868,1213,1857,1211,1223,1210,1867] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        