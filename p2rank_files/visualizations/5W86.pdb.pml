
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
        
        load "data/5W86.pdb", protein
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
 
        load "data/5W86.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4907,4550,4369,4368,4723,4794,4795,5416,5419,5420,5421,5434,5313,5322,5327,4902,4903,4564,4691,4424,4423,4425,5424,5426,4374,4375,5343,4925,4928,5344,4947,4954,4371,4372] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [123,129,124,126,152,654,657,661,1049,1050,635,1051,130,151,153,127,292,278,610,609,614,632,1127,1128,1131,1133,1126,1034,1020,1029] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [6614,6564,6557,6558,6560,6561,6563,6612,7090,7091,6739,6613,7095,7526,7527,7528,7142,7116,7135,7113,7604,7605,7608,7610,7511,7506,7603,7497] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [3137,2783,3167,3168,3243,2764,2761,2743,2638,2639,2739,2269,2270,2396,2271,2410,2738,2236,2237,2238,2243,2244,2240,3240,3244,3258,2567,3146,3151,3250,3248,3245,2535] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [2607,2611,2612,2614,2623,2624,2625,2606,2622,2974,2943,2977,7672,7686,2968,7669,2998,2999,7670,7729,7737,7740,7708,2995,2996,2997,3021,7736,3019,3020,6836,7734,3000,7731,7649,7652,7735,6864,6866,7648,4196,4201,7655,3023,3026,3028,3050,3051,6823,3210,3211,7687,7693,7718,3213] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [5172,5173,5195,5196,5197,5174,5176,6366,6400,6375,1175,1172,1178,6369,1252,1254,1257,1259,1169,1171,1164,1161,4780,5204,5199,5202,5171,4762,393,6349,6374,366,367,368,358,360] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [4779,4781,4778,4780,5150,5119,1192,1193,1209,1195,4768,4770,1250,1260,1263,1231,5172,5173,5144,5174,5175,5176,1252,1254,1259,4763,4767,4762,1241,5387,5389,1237,1216,1218,5386,5385,1210,5153,5379] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [4565,4690,4409,4410,4411,5441,5442,4652,4386,4387,4412,4405,4407,5450,4660,4662,4656,4583,4402,4623,4403,4414,4413,4566,4425,5426,5427,5440,5448] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [6832,6838,6842,6844,6834,7626,7625,6755,6876,7624,6772,7632,7634,7633,6591,6592,6593,6594,6596,7610,7611,7475,6598,6599,6600,6602,6754,6568,6575,6576,6601,6603,6614,6564,6565,6805] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [5707,5705,5717,387,6346,6351,5741,6330,6333,6335,335,359,360,5219,5194,6339,6342,5192,5220,5221,5222,5720,5708,5709] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [3532,3533,3534,3536,6826,6827,3544,3547,6817,3344,3340,6857,4178,6824,6856,4160,3016,3043,4169,4162,4166,4173,3018] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [6326,409,418,6356,6383,444,385,576,407,410,381,383,6323,575,549,550,527,541,564,566] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [7019,7024,7025,7056,6436,6442,6452,7001,7002,7016,4211,6918,6919,4183,6893,6884,7041,7042,7039,7057,4150,4153,6857,6854] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [2248,2255,2256,2257,2258,2259,2429,2411,2412,3250,2470,2469,2534,3264,3265,3266,2498] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [1420,1421,1431,1433,2043,2044,2045,2049,2052,2056,1418,899,901,2061,926,927,929] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5604,5816,5819,5897,5898,5905,4970,5859,5862,5861,5314,5315,5316,5605,5910,5911] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [8531,8547,7910,8530,7907,7700,7701,7897,7898,7899,7895,7902,7376,7378,8543,8532,8536,8539,7406,7403,7404,7704] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [7794,8095,7157,7158,8009,8049,8051,8052,8087,8088,7498,7795,8101,7500,7499] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [1317,1614,677,1572,1574,1575,1318,1619,1620,1606,1607,1022,1023,1532,1021] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [3758,3412,3610,3577,3759,4090,4088,4091,3946,3578,3580] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [5750,5783,5935,5936,6263,6264,5751,6261,5753,6119,5585] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        