
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
        
        load "data/4BBF.pdb", protein
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
 
        load "data/4BBF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [122,132,134,135,2497,316,749,752,753,776,777,1189,766,767,760,187,727,186,188,131,137,849,850,780,784,809,812,1164,582,756,1188,1190,726,330,1271,1272,1275,1278,476,1173,1159,731,509] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [7272,7274,7275,7456,7871,8415,8412,7866,8408,8411,7722,7269,7270,7271,7277,8299,8313,7470,7867,7326,7327,7328,8419,7616,7649,8416,8418,8328,8329,8330,7917,7893,7896,7892,7885,7889,7952,7920,7924,7925] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [3132,3140,3156,3133,2512,2514,3123,3125,3568,3569,3111,3118,3129,2962,3570,3648,2696,2566,2567,2568,3106,3107,2961,3651,3649,3659,3666,2856,3157,3160,3192,3164,2510,2511,2517,2712,3539,3652,3655,3656,3657,3658,2509,2515,116,117,118] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [7293,8417,8431,8275,8416,8418,7282,7283,7289,7290,7291,7314,7315,7316,7318,7278,7280,8432,8433,8439,8441,7471,7472,7328,8587,7541,7545,7546,7544,7543,7615,7571,7577,7578,7303,7304,7307,7489,7312,7313,7573,7576,7572,8592,8589,7305,7306,7308,7548,7549,7547,7301,8574,8577,8578] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [165,166,168,170,1449,1447,1173,1135,349,431,437,438,331,475,1291,332,1276,1277,1278,1125,1301,1134,1436,1430,1431,1432,433,1316,1317,434,436,1292,1293,432,163,164,172,161,173,174,175,176,138,139,140,142,149,143,150,153,188,401,404,405,399,406,408,409,1429,403] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [5537,5544,5949,5512,4947,4946,4948,5076,5491,5509,5487,5090,5091,5503,4890,4892,4894,4895,5505,4891,4897,5514,5950,6028,5948,5919,5342,5486,5268,5471,5236,6031,6032,6039,6046,5092,6035,6037,6036,6038,5266,5269,5233] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [6061,6211,5235,6053,5196,5166,5168,6192,5163,5197,6037,6051,5895,6036,6038,6059,6060,5092,4925,4909,4910,4932,4935,4923,4928,4930,5091,5109,4936,4933,4934,4924,4948,4937,4901,4902,4898,4899,4900] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [2556,2712,2521,2522,2529,2553,2554,2555,2729,2543,2544,2545,2552,2518,2520,2523,2530,3671,3673,3656,3658,3515,3679,3681,2711,2568,2855] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [5316,5319,5326,5327,9148,7129,5748,5774,656,675,676,9113,8690,8691,8692,5772,9146,9145,9144,8660,5998,5716,5749,5751,649,650,652,653,654,651] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [5790,5788,5791,7027,7031,7044,8991,7025,7034,6360,5826,9166,8992,8993,8994,5817,5818,5819,6358,6359,5820,5821,5794,7038,7043,7045] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [2778,3814,3817,3818,3816,3679,3681,3671,3673,2783,2813,2781,2786,2816,2729,2543,2544,2545,2552,2788,2712,2553,2548,2550,2855,2817,2711] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [640,663,664,665,8581,8583,639,22,23,8689,8558,8707,8567,9053,9054,8648,8675,8679,8681,8685,8597,8598,8612,9076,9077] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [3081,2577,2721,2591,3026,3083,2425,2427,2428,3009,2460,2457,2702] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [7124,95,96,97,197,47,77,341,703,7136,211,196,7133,80] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [9163,9164,9174,9177,9302,9324,9336,5297,5301,9340,9341,9342,5296,5804,5806,9303,9304,9305,5835,9347,9348,9349,9350] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [2187,2188,2189,2190,2186,1635,1998,1999,1638,1827,1828,1477,1668] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [1599,1374,1600,1601,1602,1605,2257,2265,2267,2261,2262,2222,2246,2278,2284,1057] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [6257,6556,6548,6549,6562,6563,6461,6256,5560,5921,6463,5922,6510,6509] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [8636,8936,8840,8841,7940,8843,7941,7942,8889,8925,8928,8943,8929,8869,8884,8890,8942,8637] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [6237,6428,6236,6588,6587,6395,6947,6398,6949,6950] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [4567,4569,4570,3857,4015,4048,4207,4208,3849,4018,4415,3856] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [3673,2814,2815,3697,2816,2779,3810,3811,3812,3681,3696] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [4656,3999,3978,3470] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [7843,7185,7188,7187,7191,7351,7217,7218,7220,7235,7237,7336,7337] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [8967,9139,8968,9175,8808,8778,9326,9328,8642,8775,9138,8617] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [301,2466,744,762,2488,740,1206,2600,2645,2467,2468,2469,2656,763] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [5707,6856,6882,7119,6855,5670,5673,7116,6873,368] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [5782,5816,7036,7034,6360,5817,6358,5850,6379] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [8196,8197,8162,8759,8738,8740,8230,9416] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [1022,1056,1057,1090,1619,1598,2276] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        