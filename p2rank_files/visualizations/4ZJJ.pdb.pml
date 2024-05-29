
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
        
        load "data/4ZJJ.pdb", protein
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
 
        load "data/4ZJJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1191,1192,1208,1153,1193,987,456,459,673,537,540,533,430,464,465,659,458,462,431,432,433,434,674,657,658,549,553,1175,1173,1176,1156,351,1178,349,367,368,408,440,638,986,1139,1003,1143,1144,946,1136,1137,530,532,947,938] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [2478,2479,2513,2514,2534,2535,2536,2563,2718,2538,2539,2542,2560,2562,2553,2554,2556,2557,2533,2555,3248,3251,2477,3250,3078,3230,3064,3268,3024,3047,3025,3046,3065,3266,3267,3228,2460,2462,2737,2738,2628,2753,2751,2754,2625,2637,2641,2739,3212,2618,2620,2621,3016,3219,3211,3214] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [7195,7198,7183,6608,6719,6605,6704,6720,6431,6432,6703,6705,6477,6684,7223,7224,7225,7226,7227,7228,7221,7222,7231,7232,6501,7199,7049,7202,6993,7032,7033,6524,6523,6495,6498,6499,6474,6497,6533,6476,6526,6532,6508,6984,6601,6557,6617,6527,6530,7017,6558,7014,7015,6992,6600,6598,7206,6430,6419,7209] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [5235,5031,5085,5238,5234,4654,5231,4553,4528,4560,4584,4585,4729,4562,4651,4764,4663,4765,4664,4748,4749,4750,5219,4644,4646,4582,4578,4579,4603,4647,5023,5071,5072,5032,4551,4550,4549,4555,4576,4604,5056,5053,5054,4474,4486,4728] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [1306,1340,1876,3916,1336,1338,1299,1309,1329,1330,1331,1646,7649,1327,1328,3719,3726,3735,7635,3920,3918,3399,3400,3401,3714,3369,3376,3379,3935,1861,3406,3410,1857,1863,5641,5627,1658] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [7313,7337,7339,7507,7315,7316,7083,7085,7088,7093,7302,7303,7305,7308,7343,7352,7349,7338,7340,7341,7342,7351,1219,1223,1230,1351,7624,7626,1227,1229,7591,7594,7595,7535,7536,7537,7538,7588,7589,7477,7506,7510] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [1041,7268,7277,7280,1055,7281,7285,7286,209,200,202,203,191,197,210,1161,1164,1166,1169,1159,1168,1160,192,195,1040,1062,1051,1052] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [5322,5327,5503,5504,5329,5330,5583,5500,5524,5526,5527,5616,5619,5580,5577,5128,5129,5124,5506,5530,5119,5121,5365,5351,5353,5363,5586,5316,5502,5473] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [2308,2311,2312,2313,2320,2338,3234,3235,3236,3243,3244,3256,2314,2302,3239,3116,5281,5290,5293,5294,3130,3115,3127,3126,3136,3137,5295,5299,5300,3246,2321] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [1161,1164,1166,692,693,694,699,705,706,707,192,194,195,1062,721,1051,1052,1079,722,714,715,717,745,2121,191] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [2302,2303,2305,2306,3239,2772,3241,2774,2779,3236,3126,3137,3154,3127,2797,2801,2802,2825,2794,2795] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [1387,1377,1378,1379,954,1920,921,1914,1915,1921,1925,952] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [7108,7193,7210,7212,6738,6740,7097,6767,7123,7125,6318,6319] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [7300,7087,7068,7070,7086,6330,7217,7216,7218,7108,7214,7215,7098,217,6327,7201,7219] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [7254,1589,1590,7299,7310,1583,1588,1580,1581,1582,7259,1254,7289,7279,7284,7296,7423,7327,7329,1575] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [3292,3293,3297,5619,5322,5351,5353,5354,5356,5316,5319,5309] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [7000,7434,7435,6967,6969,6998,7004,7957,7960,7961,7962,7967,7971,7966,7972,7444] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [4783,4785,5160,5134,5133,4808,4812,4806,4807,4346,4345,4349,5246,5248,4348,5243] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [5313,5324,5292,5303,5309,5306,3658,3659,3660,3650,3651,3652,3324,3325,5267] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [6261,6303,6304,6257,6262,6267,6413,6689,6690,6691,6695,6697,6657,6255,6655,6656,6658] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [3730,7659,7746,3729,7658,7682,7684,3702,3613,7694] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        