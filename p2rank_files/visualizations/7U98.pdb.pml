
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
        
        load "data/7U98.pdb", protein
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
 
        load "data/7U98.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2906,3437,3466,3542,3546,3547,3451,3548,2904,2905,2471,2472,2477,2478,2480,2521,2522,2523,2659,3017,3018,3019,3024,2910,2474,2668,2672,3001,3003,2674,2842,3559,3549,3553,3554,3555,3576,3577,3578,3556,2487,2676,3007,3013,2925,2920,2923,2919,6624,3065,3073,3097,3066,3068,3072,3467,3042,3038,2475,3041] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [147,148,153,154,155,198,200,353,1101,1188,1181,1180,158,159,160,163,164,1071,1085,1189,1074,1075,336,672,651,652,677,1100,653,654,149,152,151,199,670,334,335,647,658,351,167,176,178,177,179,1209,1212,1049,181,634,345,349,635,731,699,702,706,707,675,676] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [5860,4880,5765,5861,5867,5868,5033,5030,5889,5892,5032,5891,5016,5331,5333,4878,4879,5239,5025,5029,5314,5317,5327,5015,5379,5382,5780,5781,5386,5387,5751,5411,5338,5350,5352,5355,5356,4834,4835,4837,4840,4828,4829,4831,4832,5221,5220,5225,5334,5863,5873,5157] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [8102,7201,8182,8183,8082,8086,8087,8073,7654,7655,7656,7660,7338,7677,7701,7704,7708,7709,8103,8184,7353,7355,8189,8190,8191,8213,7202,7561,7637,7351,7639,7200,7156,7157,7159,7162,7161,7165,7166,7733,7151,7150,7153,8178,8192,8195,8196,8199,7541,7546,7555,7556,7559,7560,7562,7476,7478,7542] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [2210,2568,2362,2164,2165,2166,2167,2168,2580,2583,2586,2413,2589,2590,801,2163,840,843,842,2593,2247,2604,2607,742,1130,740,2246,1129,839,841,1140,778,811,838] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [263,268,269,266,267,270,4548,4549,4550,4592,4593,4546,4547,3496,3506,4628,4629,3495,260,284,3171,4545,3167,3208,3108,3204,3205,3206,3207,3209,3177,3144,3106,3246,90,39] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [7778,4961,4964,7780,7807,7803,7813,7777,4719,4925,4770,9228,9230,4940,4943,4946,8131,8132,7743,7744,9151,9152,9195,9147,9148,9149,9150,9192,9201,8142,7840,7841,7842,7843,7844,7845] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [2647,685,686,667,2274,2275,2268,2276,2277,2280,4678,2296,4658,3029,3033,2645,2646,3050,3051,3052,2639,2278,2644,316,4650,4659,4662,4656,4657,323,324,317,322,668,321,664,663,660,661] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [7325,7662,7663,7670,7324,7669,7688,6951,7323,6947,6953,6957,6959,7318,7319,7306,7326,5366,5365,5340,5001,5002,5003,5004,9252,4996,4997,9261,7687,5347,5348,9280,9258,9259,9260,5341,5343,6973,6975,7665,6954,6955] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [7265,7268,7269,5809,5810,6925,6926,7283,7286,5422,5458,5481,5483,5485,5491,7041,7247,5820,5522,5523,6842,6843,6844,6845,6846,6847,5518,5520,5521,5519,6889] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [6971,9286,9289,7514,7508,7509,7534,7024,7551,7550,6940,6973,6942,6943,6976,7664,7539,8168,7570,7544,7547,7548,7552,6900,9283,7661,7505,9295,7503,7504,7506,9291] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [503,549,497,501,502,2305,548,4645,659,662,545,567,568,4679,1166,546,542,532,537,504,506,507,512,541,540,4642,4643,4646,4676,4603,550,2302] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [2487,2488,2490,2676,2494,3555,3415,3575,2502,2504,3440,3441,3442,3452,3451] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [3438,3440,3661,3441,3442,3646,2483,3629,3626,2487,2488,2490,3089,3882,3660,3934,3932] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [5172,5226,5228,5229,5225,5248,5187,5212,5222,9245,9247,9248,9235,5230,6982,6985,9281,5341,5342,5846,9278,9236,9274,9277,5182,5184] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [2868,2908,2912,2914,2915,2858,2863,3025,2911,2263,2252,2251,2260,2261,2264,2898,2916,2293,2294,2297,2873,3532,4684,4687,3028] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [8050,8051,8231,8232,8233,7173,8088,7354,7355,8191,7169,7174,7181,8087,8076,8077,8078,7166,7167] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [5205,5207,5603,5604,5625,5191,5601,5602,2459,2460,5197,5198,2464,5663,6997] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [5094,5099,5049,5907,5910,5098,5318,5317,5891,5157,5121,5884,5902,5156,5096,5130] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [3513,4670,3501,3512,2894,3270,3292,4638,4639,2882,4685,3515,3514,2893] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [559,635,637,553,557,476,1190,1212,1194,351,653,539,1182,1183] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [1571,1849,1852,1693,1429,1655,1463,1698] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        