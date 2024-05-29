
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
        
        load "data/3ZEP.pdb", protein
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
 
        load "data/3ZEP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6956,7327,7328,7768,7769,6830,7344,7350,7353,6775,6777,6778,7844,7845,7846,7849,7850,7851,6829,6831,6970,7110,6972,7379,7380,6781,6780,6783,7738,6773,6774,6779,7747,7752,6792,6793,6785,7372,7373,7332] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [2345,2347,2349,2350,2376,2378,2503,2377,2870,2871,3406,3399,3400,3403,3404,3405,3407,3413,2343,2344,2348,2351,2353,2914,2915,2887,2889,2896,2911,2904,2891,2875,2947,2950,5180,2918,2922,2923,3301,3323,3398,3322,2762,3292] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [4537,4533,4534,4539,4567,5588,5580,5111,5115,5505,5104,5107,5108,5075,5086,5089,5080,5082,5084,4536,4692,4566,4951,5068,5063,5064,5504,5116,5140,5143,5474,5488,5097,5581,5582,5587,5585,5586,5485] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [324,325,326,183,184,185,677,678,1118,1119,1194,682,704,1195,1196,1199,464,132,131,310,694,696,700,703,137,139,140,146,729,730,147,1102,1088,127,128,129,133,134,135,722] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [1322,1327,1325,1326,7597,423,1237,1238,1239,7622,7620,7621,7627,7624,7629,7631,7596,7623,413,414,7652,7181,7169,7197,7199,383,1340,1342,1380,1361,1359,1360,1346,1348] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [8357,8056,8361,8362,8328,8348,8349,8055,7743,8023,7739,7740,7741,7742,7394,7395,7396,7397,8266,8295,8356,8310,8312,8313,7435,8324,8269] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [1332,1334,1331,7200,7601,1313,1328,1260,1261,1299,1286,1310,1284,7181,7182,7186,7197,7199,7198,7187,7189,7812,7814,1327,1325,1326,7597,7627,7596,7575,7578,7569,1277,7544,1263,1278] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [1091,745,747,744,785,1680,1681,1682,1683,1092,1093,1393,1425,1426,1640,1726,1089,1090,1698,1688,1715,1718,1719,1731,1732] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [401,377,376,411,8159,8160,412,7645,7646,7647,8158,7617,7644,444,8753,8756,8758,8192,8748,8752,7609,8762,8765,8156,8168,8169,8171] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [443,8779,8670,471,481,506,8807,8806,504,8671,643,627,629,22,610,644,612,14,444,8746,8749,8752] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [6073,6015,5131,6057,6058,5130,5133,5477,5476,5475,6090,6093,6094,6107,6069,6072,6055,6056,5800,5801,5479] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [2937,2938,3293,3815,3294,3600,3601,3856,3855,3858,3859,3812,3863,3890,3893,3894,3902,3906,3907,3873,3857,3295] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [5602,5603,5611,4775,4774,5587,4803,4807,5601,4845,4773,5588,4707,4708,4551,4725] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [3749,4048,3746,4087,4228,4230,4232,4231,3581,3931,3932,4015,3779,3606,3573,4014,4016] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [3427,2362,3429,2586,3419,2519,2536,2618,2619,2622,2656,3420,3421,2612,2613,2614,2582,2585,2584,3405] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1321,1322,1326,7598,1243,7600,1240,451,453,1237,1239,7621,8772,8789,8797,8792,8798,8823] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [6169,122,123,6247,177,178,348,351,144,145,6279,6307,6308,6273,6155,6168,6163,6246,353,356,357,358,359,361,6320,352] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [2497,2790,2248,2249,2787,2220,2416,2420,2422,2438,2439,2482,2417,2483,2479,4663,2791,2792] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [4438,4435,4437,4606,4609,4611,4433,4672,4686,4409,4434,4436,4978,4979,4668,4605,4628] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [6132,6289,5806,5946,5949,5979,6471,6472,6473,6328] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        