
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
        
        load "data/7REC.pdb", protein
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
 
        load "data/7REC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2550,2557,2559,2560,2562,2563,2548,2549,2546,2552,2554,2388,2390,3131,3134,3135,3104,3126,3133,2579,2604,2574,2284,3103,3105,2374,3085,2814,2813,2815,2831,2833,2616,2617,2618,2225,2588,2603,2599,2600,2583,2829,2830,2832,2834,2835,2840,2635,2798,2636,2220,2217,2223,2918,2936,2952,2221,2508,2510,2372,2373,2478] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1855,2023,2024,1715,1716,1717,2053,2054,2058,1185,1249,1485,1486,1487,1488,1489,1186,1182,1247,1164,1339,1472,1473,1475,1470,1442,1471,1439,1440,1353,1355,1514,1546,1512,2004,1871,1337,1338] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [6041,6059,6226,5546,6227,6228,6244,6248,6249,5544,5937,5921,5758,5759,5375,5376,5377,5438,5440,6075,6208,6209,5529,5645,5530,5938,5713,5714,5715,5716,5717,5740,5741,5953,5952,5673,5674,5691,5692,5693,5675,5643,5678,5642,5676,5373] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4189,4190,4191,3562,3605,3276,3578,3579,3580,3581,3293,3273,3602,3603,3574,3631,3633,3563,3564,3566,3531,3528,3530,3572,3576,3991,4160,4161,3992,4008,3277,4141,3338,3340,3533,3429,3430,3853,3854] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [7272,7271,6965,7270,6718,6720,6719,6714,6435,7302,6705,6745,6747,6588,7298,7301,6670,6673,6675,6672,6708,6571,6572,6744,6722,6415,6417,6418,6419,6721,6963,6964,7103,6421,6802,6803,6425,7252,7253,7119,6480,6482] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [159,221,222,820,969,989,415,158,157,461,155,310,311,327,445,446,448,488,458,459,444,413,312,519,680,681,682,698,1019,520,1016,1017,1018,836] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [5226,4356,4358,4354,4357,4890,4906,4907,4889,4888,4728,4335,4644,4643,4686,4653,4657,4658,4660,4421,4662,4684,4659,4510,5197,4511,5177,5178,5044,5223,4527,5227,5027,5028,4645,4647,4614,4509] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1341,1345,2036,1334,1333,1340,1343,1845,2033,2034,336,342,343,2031,2032,2019,1362,1363,1364,1369,1370,993,996,998,999,1001,984,318,307,314,317,811,810,997] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [6235,6236,6237,6238,6223,7094,7276,7279,7281,7282,7284,6050,6049,6596,6602,6577,6567,7267,6566,6573,6574,6578,6603,6595,5532,5535,6030,6240] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4187,4189,4182,4194,4195,3634,3660,3631,3633,3635,3886,3887,3888,3889,3890,3891,3673,3885,3959,3869,3871,3870,3692,3659,3656,3896,3854] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1560,1139,1559,1102,1136,1163,1161,1162,1566,1591,1592,1593,1683,1105,1694,1696,1697,1698,1699,1130] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3460,3431,3424,3425,3432,3434,3453,3454,3455,2926,2927,3461,2912,3436,4156,4165,4170,3435,3114,3115,4168,3112,3113] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        