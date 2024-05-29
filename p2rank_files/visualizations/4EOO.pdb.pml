
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
        
        load "data/4EOO.pdb", protein
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
 
        load "data/4EOO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4752,4996,4995,5645,5646,5647,5650,5651,5545,5572,5573,5574,5157,5557,5652,5653,4588,5188,5165,4891,4614,4857,4858,5666,4751,4603,5132,5133,5676,4634,4633,4577,4576,4595,4582,4580,4735,5149,5151,5137,5154,4767,4769,4756,4749,4750,4612,4598,4601,4620,5127,5128,5129,5131] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [97,150,151,112,99,105,623,625,624,252,621,93,94,692,1078,662,718,490,1077,631,651,344,377,268,269,115,121,1156,627,626,1061,1155,1157,1056,1049,489,1149,1150,1154,345,126,129,122,1180] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [1,2,7899,46,196,232,7479,246,520,521,522,523,511,512,514,615,7918,7919,7931,7478] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [498,499,635,1136,632,7485,1094,7132,7134,640,653,1091,1119,2348,1106,1107,497,233,7484,7133,230,674,462,464,465,475,7111,7113] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [5028,5017,2990,2991,5026,5027,5029,5018,4715,5121,2989,2998,4484,4485,4518,4529,4679,3435,3438,3439,2999,3408,3440] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [1227,1242,3555,3554,3556,3585,3587,3674,3671,2868,2866,3521,3523,3527,2865,1244,1246,3160,3161,1243,1205,1214,1204,1213,1200,1264,1266,2850,2852,2856,2857,2859,4374,3520,3701,3702,3681,2864,2860] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [1430,1431,1432,2411,2412,2441,2443,2442,2408,2194,2198,2187,2188,2189,1225,1228,1231,1237,2196,2197,1452,1456,1457,1463,1464,1441,1442,2426,2429,2417,1469,2211,2222,2414,1236,1223,1211,1216] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [3796,3825,3869,3808,3513,3748,3795,3745,3746,3811,2566,2580,2921,2579,2949,3847,3848,3496,3507,2537,2708,3752,2915,2918,3501,2887,2888,2891,2912,2914,3756] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [6920,6922,6923,6887,6891,6892,6893,6685,6675,6676,5721,5724,5719,5727,5707,5708,5732,5733,6906,6948,5952,5953,5959] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [5739,5740,7330,5738,8011,7338,8192,8193,8865,5723,8047,8078,8165,8166,8162,5725,8076,7332,7336] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [8288,8360,8239,8241,8247,8004,8237,7987,7367,7371,7992,7995,7997,7998,8338,8339,8286,8287,8316,7059,8302,7188,7392,7429,7401,7394,7395,7398,7050,7060,8299] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [7631,8018,8019,8020,8021,7346,7348,7347,8012,7344,7345,7640,7641,5742,5695,5696,5697,5469,5701,8014,5710,8046,5723,8047,5739,5740,5700,5709,5734,5762,5760] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [1831,1840,1874,1847,1873,2196,2197,1418,1431,1432,1875,2188,2189,2190,1834,1845,1441] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [5141,5160,4968,4970,4971,5631,5632,5587,5590,5615,5606,2635,2637,5003,5005,6836,2652,5146,2633] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [4051,4054,2445,2448,2449,3604,3605,3606,3595,2438,2400,2440,3560,2406,3592] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [8947,8429,8431,8937,8943,8944,8946,8407,8669,8398,8636,8400,8582,8948,8644,8634,8666,8667,8668] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [7067,7068,7069,7463,7467,7468,7469,7116,7117,7118,7114,7113,497,499,445,449,447] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [2159,2160,2161,2163,2164,1979,2171,2173,1977,1978,1769,1822,2126,2149,2155,1770,2127] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [8096,8097,8544,8545,8051,8084,8086,6929,6932,6918,6919,6920] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [7582,7248,7239,7752,7721] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        