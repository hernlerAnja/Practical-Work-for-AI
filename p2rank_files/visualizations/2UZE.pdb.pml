
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
        
        load "data/2UZE.pdb", protein
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
 
        load "data/2UZE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1146,674,682,1075,1074,258,632,634,1147,1151,629,638,140,242,87,666,655,658,630,83,84,89,94,101,141,139,95,102,1058,1154,1046,689] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4597,4550,4551,4558,4953,5085,5531,4714,5611,5087,5089,4880,5090,5086,5115,5532,5123,5131,5143,5146,5172,5112,4596,4543,4539,4698,5107,5109,5515,5603,5503,5504,5604,5608] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [6877,6847,6848,6849,5910,5894,5895,6879,5679,5682,5685,5691,5886,5923,6633,6634,5838,6657,6668,6857,6674,6677,5665,5666,5690,5911,5917,5918,5896,5906,6904,6862,6865,6867,5944,6640,6644] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [7302,7957,5668,7300,7301,7597,5697,5698,5700,5718,7286,7959,5671,7963,7964,7965,7304,7966,7596,5659,5658,5667,5654,5655,5681,5683,8021,7989,7990,7991,7992,8018,5684,7956,7292,7293,7295,7288,8023,8138,8117,8107,8110,8136,8810,8799,8111,8084] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2171,2175,2180,2181,2372,2414,2377,2373,2384,2385,2383,2169,2170,2177,2194,2393,1449,1453,1454,1460,1461,1462,1466,1222,1228,1234,1208,1233,1220,1438,2172,1427,1428,1429,1437,1225] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3528,3643,3674,3557,1224,1226,1227,1231,1235,3525,3526,3527,3646,3647,2832,2836,2828,3492,3493,2840,3132,3133,1211,3498,3499,3500,3501,3502,2822,1240,1241,1261,3123,1210,1197,1198,1201,1202,1263,971,2829,2831,3653,3672,4332,4346] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [8192,7323,8232,8242,8244,8261,8283,8284,7002,7385,8247,7348,7015,7016,7357,7350,7351,7354,7005,8305,8184,7949,7943,7932,6971,6973,6999,7937,8182,8233,8188,7144] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3722,3485,3841,3768,3797,3728,2921,2551,3783,3780,2884,3769,3718,3724,3479,3468,3819,3820,2893,2552,2538,2541,2509,2859,2886,2887,2890] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1415,2172,2173,1817,1814,1823,1828,1420,1432,1416,1428,1429,1830,1848,1850,1856,1865,1829,1857,2171,2180,2165] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [8490,6885,6888,6874,6876,8031,8488,8487,6886,8040,8041,8042,8029,6841,6842] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6286,6628,6277,6643,6291,6293,6319,5872,5885,6320,5886,6634,6635,6636,6280,5834] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1269,1272,1273,382,1169,1171,1173,1176,1268,353,359,380,3146,3168,3169,3137] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4837,4839,5626,5730,4815,5628,5633,7601,5729,7610,4810] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3743,4225,4227,4164,4162,4194,3742,3741,3753,3764,4166,3744] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3443,2536,3440,3455,3444,3445,439,441,2505] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        