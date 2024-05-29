
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
        
        load "data/4ZSE.pdb", protein
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
 
        load "data/4ZSE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2561,2560,9269,3156,3157,3525,3527,3528,3524,3538,3529,3181,2564,2565,2568,2580,2582,2583,3502,3539,2572,3699,3714,2550,2548,2549,2554,2555,2556,3149,3152,3553,3554,3140,2600,2601,3642,2753,2754,3641,3634,3640,2552,3125,3133,3122,3126,3127,2740,2746,2737,3101,3103] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [5684,2001,2003,2004,5045,5051,5056,5057,5628,5049,5046,5048,5095,5096,5097,5060,5061,5062,5064,5642,5643,5652,5723,5681,5722,5682,5636,2690,2692,5655,5660,5659,6029,5625,6058,6059,5691,6138,6139,6145,6146,6147,5250,5233,5605,5606,6032,6033,6007,6043,6044,5249,6167,5073,5069,5076] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [1156,1236,1237,344,714,728,726,1157,762,1127,1141,163,167,162,164,166,208,209,169,170,172,175,731,755,758,763,787,1243,705,707,709,360,361,1244,1245,210,174,178,179,1238] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [8033,8037,8426,8396,8410,8062,8038,7451,7452,7458,8506,8021,7654,7656,8513,8514,7504,7468,7459,7464,7463,7467,8505,8397,7984,8425,7502,7503,7455,7453,7456,7989,8003,7639,8001,7652,8007,8006,8030] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [4723,4729,4730,4731,4732,4736,4733,4751,5613,5620,5614,5616,5631,5639,3111,3113,7218,7244,7246,7224,7225,7226,7227,7230,6072,5213,5214,5218,4744,4749,2622,2722,2723,2724,2725,2717,5638,5201,5220,5221,5219,5624,5621,5118,3117,3128,3112,3567,3569,3136,4735,3118,3121,3135] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [9297,9298,2593,2563,8277,8256,8257,8253,8254,8252,8279,8282,8255,9266,9295,9304,2534,2531,2535,2539,2542,2543,2544,7847,7848,7858,7859,2545,7842,8284,2549,2555,2556,2558,9306] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [899,2223,2224,2225,2226,2227,896,898,2221,2222,7345,2268,7567,7570,7572,857,860,7549,7564,7573,7574,2302,1185,1186,2304,7587,797,1196,895,897,894,867,833,835] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [9618,7847,7848,7858,7859,9624,9625,8460,9604,8470,8472,8474,8471,9628,2543,2544,8232,8225,8198,8235,9629,8257,9635] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [54,105,273,276,277,278,280,9498,9525,9526,9527,255,270,293,8455,9564,291,9561,8454,8465,9499,9563,8107,8109,8132,8110,8111,8108,8169,8170,8171,8173,8174,9474,9484,8073,8145,8138] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [2318,2319,2322,2279,2311,2516,2512,2280,2281,7328,7881,2282,2350,9616,2348,2351,2352,2355,7837,7838,7843,7832,7833,7879,7880,7863,7873,8491,7899,7876,7877,7993,9619,9621,9623,9622] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [2692,2030,2694,5033,5034,5038,5049,2001,1002,2003,2004,5045,1039,569,562,977,568,980,978,2031,2028,2375] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [7625,7626,7627,741,742,2338,2347,2351,2354,2326,9613,2332,2333,2334,9585,723,9610,719,7619,2336,7624,7620,9593,7994,7998] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [2354,2326,2332,9591,324,9585,329,723,330,331,332,719,8017,8016,9593,9597,325,9594,9595,7994,7998] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [1104,1105,1265,1245,191,192,1306,1308,360,361,182,186,187,1292,174,178,179,210,1241,1142,1130,1131,1132,1141,175] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [2676,5695,5694,5731,5769,5765,2684,6088,6087,5796,5801,7196,2667,7113,7114,5755,5800,7112,7115,7117] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [2948,2994,3013,7210,7211,7214,2995,7240,7243,7247,4758,4762,7242,4765,4766,4769,3109,2991,2993,2977,2987,2937,2946,2947,2957,2963,2942,2951,2952,3619,4761,2958,2962] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [552,553,2362,2364,555,558,2360,2361,9609,717,718,9614,618,1222,583,593,9607,9580,9610,9611,9577,9578,9581,715,599,600,9538,601,596,597,619] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [7656,8512,8514,8536,7504,7468,7464,7463,7467,7483,8409,8410,8399,8400,8401,8411,8374,7471,7475] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [2972,2973,3377,3379,3355,3357,3347,3354,3318,3319,3321,3588,4772,4774,4784,4773,4775,4777,4461] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [2762,3045,3057,3059,3051,8321,8322,7817,8323,2521,2763,7830,7834,8286,8288,7831,7832,2471,2502,2472,2476,7327,2505,2509,2513,2496] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [7884,7885,7888,7890,8525,7807,7968,7984,7870,7875,7876,8505,8524,8507,8508,8515,8518,8513,8535,8537] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [5154,5157,5160,5163,5164,4702,4665,4666,4701,5168,4963,4657,4617,5178,4630,5180,4987,4936,5142,4986,4988,4942] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [2664,2667,2668,7114,7115,7117,7160,7118,2661,2684,6088,2646,6087,7196] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [6170,5266,6185,5356,5075,6190,5590,5591,5417,5355,5377,5415,5352] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [4748,4852,4854,4855,4752,7256,5449,5452,5477,6124,5494,5496,5487,5434,5492,4716,4719,7253,4747,5447,5614,5615,4718] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [4650,3276,4651,4609,4635,3293,3295,4581,4584,4580,3263,3271,3262,3265,4517] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [8897,8981,8895,8789,8755,9175,9178,9024,9030] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        