
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
        
        load "data/4EOR.pdb", protein
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
 
        load "data/4EOR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [159,107,108,1039,98,100,101,1068,675,682,275,277,96,89,91,92,93,94,95,157,158,668,658,659,666,667,1051,1144,1147,1046,490,1139,631,1067,623,489,621,648,651,645,260,1140] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [4734,5582,4579,5148,5583,4631,4632,5554,5566,4581,4583,4582,4584,4586,4587,4593,4594,5136,5153,5182,5190,5197,5156,4575,4578,5654,5655,5656,5659,5660,5662,4995,5127,5128,5130,5132,4633,4750,4751,5126,5561] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [3157,1234,1236,1233,1194,1195,1203,1204,1193,1217,2860,2861,2846,2856,2852,2848,3156,1191,1190,3677,2855,3705,4368,4377,4375,1224,1219,3526,3559,3557,3558,3523,3524,3531,3533,3530,2862,3532,963,964,3590,3704,3588,3556,3585] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [1464,1452,1456,1457,1463,1465,1469,2190,1442,2191,2231,2234,2225,2230,2214,1201,1221,1227,1441,1215,1218,2197,2200,1213,2437,2438,2439,2403,2408,2409,2416,2422,2464,2425,2427] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [5016,2994,3404,3427,3428,3436,3429,4490,5043,5025,5026,5028,2995,4678,4714,4728,4527,4528,5120,2985,4517,5017,5019] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [520,7257,7699,204,7258,7667,28,514,240,7688,7690,523,31,511,512,538,2,4,41,42] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [3850,3504,3516,3510,3751,3759,3749,2704,3755,2883,2884,2908,2887,2917,2914,2575,2910,2911,2945,3499,3828,3814,3811,2533,3851,2576,3872,3799] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [2351,497,6894,1126,6892,6912,1096,241,7264,465,635,1109,632,1084,637,640,664,245] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [5749,5743,5747,5748,5771,5718,5719,7814,7813,5732,7815,7779,7960,7961,7118,8631,8633,7932,7933,5734,7844,7934,7940,7109,7123,7786,7125,7126,7124,7780,7788,5709,5710,7787,5751,7420,5769] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [2648,2649,5611,5612,5613,5614,5615,5640,5142,5145,5599,5177,5140,5641,5002,5137,3001,2627,2629,2630,2631,5004,6636,5624,4967,4969,4970,4715,4719] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [8054,8055,8056,8065,8004,8005,8015,7755,7146,7765,6829,8084,8067,8128,7772,8007,8106,7760,7150,7766,8107,6838,6839,8070,7173,7174,7171,7208,7180,7177] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [6410,6324,6325,6134,6248,6326,6315,6316,6309,6312,6313,6256,6123,6124,6125,6411,6412,6415,6438,6440,6437,6136,6259,6381] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [1876,1418,1431,1432,1849,2192,2193,1832,1834,1843,2201,2185,1850,1848,1869,2191] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [348,345,346,1162,353,1169,373,1174,1262,1264,1266,1261,1296,3161,3170,375] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [3563,3595,3596,3606,3608,3609,3598,2440,3568,3564,4057,1212,2434,2436,2406,3565,4019,4053] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4850,4851,7395,4858,5677,5776,5779,5777,7433,4878,4880,5781,5680,5681,7456,7424,5679,5684] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [8312,8313,6700,6701,6702,7819,7863,7864,7865,7851,7852,7854,7850,6709,6711,8309,8275,6708,8310] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [8166,8168,8713,8714,8402,8404,8399,8400,8411,8175,8197,8199,8195,8433,8434,8436,8349,8351] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [1825,1981,2166,2163,2165,1980,2174,2152,2158,2129,1773,1982] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        