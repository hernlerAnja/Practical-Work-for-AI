
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
        
        load "data/3GT8.pdb", protein
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
 
        load "data/3GT8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2717,2718,2519,2522,2526,2528,2529,3589,3594,3600,3619,3456,2544,3595,3596,2546,2532,2536,3062,3065,3066,3079,3059,3587,3060,3507,2946,2947,2948,2949,2952,2953,3586,3588,2563,2565,2513,2514,2516,2517,2564,3077,2701,3493,2527,3492,3478,3480,3481,3482,3083,3508,3106,3109,3113,3114,3138,3082,3090,3105,3043,2714,2961,2965,3061,2716,2885,3045] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [1113,1127,1230,1231,1221,1222,353,1143,1142,1223,157,147,148,154,155,198,200,149,714,717,718,151,152,712,725,167,172,159,160,163,164,178,1091,349,350,351,336,695,696,199,749,773,748,1114,1116,1117,740,741,744] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [258,263,272,273,283,7000,7001,7002,7003,7004,7005,90,268,269,270,39,7045,7047,260,5970,7082,7084,7015,5637,5672,5673,5631,5960,5969,5959,275,284,5571,5572,5608,5632,5635,5630,5641] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [8384,8385,8390,8302,8383,7511,7512,7513,7855,7309,7310,7359,7323,7324,7319,7360,7346,7315,7316,8392,7743,7744,7742,7496,7860,7757,7760,7762,7854,7856,7838,7756,7680,7840,7509,7909,7320,7908,8273,7314,7933,7311,7901,7904,7308,8287,8303,7877] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [4937,4939,4940,4986,4987,4936,4941,5930,5931,6010,6011,5528,5529,5532,5536,5537,5561,5500,5502,5505,4988,4947,4951,4952,4974,4948,4943,4942,6018,5915,6017,6019,5902,5904,5901,5123,5124,5137,5483,5484,5140,5141] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [2649,9405,2628,2639,2625,9378,9383,2404,2455,2456,7943,7944,2640,7981,8041,8043,8045,9353,8007,9357,9360,2631,2632,2633,2638,8009,8003,8004,8005,7979,8006,9366,9356,8331,8342,8332,2610] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [727,5092,5112,1159,2314,2308,2311,2312,2310,5104,5110,5111,5109,5498,2302,2331,5490,5491,5493,709,321,316,702,705,7105,7111,7113,7115,7117,322,323,324,315,706,5501,5515,5516,5497,5944,5946] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [853,880,881,882,884,885,783,819,821,5071,5054,2201,2245,4827,2200,2202,5055,5051,5048,2279,2281,2244,1181,5072,784,1171,1172,844,847,842,843,2197,2198,2199] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [9462,9468,9469,9475,9478,9489,9491,3070,4693,2687,2688,7483,7484,3074,2686,3078,7862,7869,7481,7482,4696,7865,8318,4667,4673,4675,4676,3523,4679,7476,7471,3092,3522,3093,9474,2681,2689,7887,9470,9461,9467,9471] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [7753,4659,4660,4663,4662,7771,4620,7695,7745,7749,7752,7704,7705,7706,9535,4623,4691,4689,4692,4652,7709,7715,7721,9497,9498,9504,9539,7864,8368,9499,4695,7707,7710,7735,9493] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [7430,7426,7435,4580,4581,4607,4576,4561,4644,4646,7420,7443,3221,3207,3208,3209,3220,3213,3214,3247,3249,3250,4553,3536,3149,3184,3186,3537,3248,7405,4610] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [2909,2911,2905,2910,2912,2915,4705,2954,2900,2940,3069,3573,2950,2953,9486,4701,4713,9484,9457,9488,9490,4709,9419,2387,2956,2958,9415,2976,9458,9455,9450,9451,9447,9446] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [9055,9056,1724,9057,1744,1745,1746,9018,9038,9039,8871,9065,8992,8993,9026,1716,1719,1720,9014,9012,9013,9050,9051,9058,9063,1607,1596,1602,1610,1626] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [4966,5879,5915,6019,5878,5904,5905,5906,4988,4947,4951,4952,4955,4974,4948,4968,5141] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [2297,2298,2328,2330,5379,5381,5323,5377,5363,5328,5335,5332,5333,5399,5373,5376,7139,7141,7142,7143,7147,5996,5338,5337,5343] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [2294,2295,2297,2298,2328,2330,5379,5381,5323,5377,5363,5328,5333,5399,5373,5376,7141,7142,5996,2255,2253,2258,2256,4810,2287] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [8337,9515,8096,8126,8127,8128,8066,8103,8106,7730,7731,9513,9514,9524,9512,8068,8070] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [946,968,570,571,2352,943,936,966,967,909] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [3828,3970,3862,4247,4249,4250] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        