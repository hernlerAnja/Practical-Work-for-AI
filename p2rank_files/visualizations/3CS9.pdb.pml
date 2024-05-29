
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
        
        load "data/3CS9.pdb", protein
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
 
        load "data/3CS9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3252,3253,3342,3344,2284,2337,2447,2814,2817,2338,2455,2459,2463,2841,2811,2813,3337,2461,2663,2664,2797,2564,2777,2792,2793,3327,3328,3331,2589,2314,2282,2285,2286,2287,2831,2825,2842,2306,2312,2316,2317,2832,2845,2852,2873,2876] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [7236,6303,6786,6787,6660,6661,6791,7235,7322,7324,7308,7304,7307,6422,6586,6587,6357,6434,6330,6331,6333,6356,6436,6438,7319,7317,7320,7311,6560,6562,6771,6301,6304,6305,6306,6805,6807,6325,6335,6846,6835,6836,6826,6811,6819,6825] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [1096,141,304,661,663,194,142,664,440,644,515,643,648,628,316,668,665,683,693,676,1184,1186,1188,1190,168,169,170,172,195,144,171,173,174,1172,1175,1181,318,320,1183,439,415,1097,696,703,514] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [4383,4384,4331,4358,4359,4330,4363,4362,4327,4823,4595,4824,4492,4501,4505,4805,4808,4493,4507,4508,4509,4845,4828,4835,5276,4841,5277,4872,4848,4856,4843,4844,4873,4695,4491,5354,5351,5370,5366,5368,4694,5352,5355,5361,5363,4618,4619,4620] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [1179,438,439,408,411,412,413,415,1172,1176,1177,1175,1007,1009,430,431,464,466,1025,1027,1163,1168,1169,1170,514,962,505,440,512,436,462,1021] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [7146,7148,6655,7105,7106,7164,7158,7160,6613,6586,6587,6585,6659,6577,6578,7305,7308,7312,7299,7304,6656,6660,6559,6562,7313,7315,7311] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [2579,2580,2581,3158,3169,3154,3156,2657,3175,3111,3152,2559,2561,2587,2588,2589,2615,2661,3319,3324,3325,3328,3331,3332,3335,3181,3183,3179,2663,2564] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [1450,1452,1454,1336,1327,1325,1309,1313,1304,3288,3290,1453,1031,1373,2974,2993,1032,1043,3280,1216,1217,1207,1208,1034,1035,1433,1434,2954,2956,1329,1299,1326,1324,1369] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [4685,4688,5343,4694,5352,5355,5356,5348,5349,5205,5359,4595,4692,4642,4611,4644,4646,4616,4618,4619,4620,4610,4590,4592,5187,5189] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [3090,3092,3130,3099,3128,608,609,2632,2634,3070,3091,4088,4090,3089,3097,3094,369,396,4125,2640,2641,2648,358,359,360] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [1555,2087,1551,1585,1872,851,1588,1846,1847,859,1871,1591,1836,1834,829,849,854,848,853] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [2978,2996,2998,3000,3606,3873,3874,3612,3867,3572,2976,3898,3009,4114,3576,2997,3002,3034,3609,3861] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [7479,7752,7755,7756,7763,7366,6862,6899,7706,7746,7365,7391,7380,7383,7381,7385,7392,7210,7494,7387,7493,7209] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [7962,7975,6992,6994,6970,6972,6973,7974,7713,7715,7716,7719,7714,6991,6996,7028,7679,7683,8215,7999,8000,7000] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [7502,7503,7528,7529,7581,7582,7175,7170,7171,7185,7464,7182,7183,7497,7501,7455,7444,7448,7453,7452,7440,7485] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [1365,1366,1624,1627,1628,1635,1250,1256,1260,1261,1618,719,1578,1071,1234] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [6829,6831,6874,6877,6879,6881,6953,7271,6833,7269,6917,6952,6907,6910,6905,6912,6915] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [2836,2838,2839,1302,2912,2915,2883,2885,2887,2880,2910,2957,2958,2959,2966,2918,2921,2911,3264,2837,1304,3274,3289,3291] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [319,320,1183,1192,351,352,353,386,414,374,372,373,1194,1227,167,343,344,324,1216,1217,1215] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [5596,5027,5028,5029,5626,5628,5009,5031,5629,5873,5884,5870,5871,5909,5908,5632] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [4868,4869,4870,4866,4863,4911,4949,4952,4909,4942,4943,4989,4918,4990,4914,4916,4946] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [5551,5687,5978,5976] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        