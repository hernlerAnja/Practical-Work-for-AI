
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
        
        load "data/5UIS.pdb", protein
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
 
        load "data/5UIS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4496,4536,4537,4539,4541,4542,4576,4663,4991,4538,5011,5012,5013,5015,4992,4993,5415,5414,4961,4962,4963,4965,4967,4964,4966,5091,4547,4549,4550,5019,4577,4556,4557,5390,5398,5498,5490,5491,5492,4543,4544,4545,4677,4679,4777,5020,5044,4986,4988,4999,4972] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [7151,7433,7118,7119,7149,7150,7108,7109,7114,7115,2689,7435,7040,7095,7096,7097,7098,7102,7436,7437,2722,7141,7143,7138,7139,7173,3314,2820,2821,3266,3267,3269,3300,2686,3301,2675,3315,2718,2719,2720,2472,2822,2825,2826,2829,2847,2471,2468,3270,3274,8112,8113,8118,8119,8121,2467,3275,796,3278,794,788,8092,2473,7176,7423,7425,7426,7175,7431,7174,2674] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [2486,2818,2834,2837,2838,2839,2355,2399,3253,2809,3252,2845,2857,2858,2861,2354,2353,2310,2343,2350,2937,2351,2352,2357,2358,2398,2400,2500,2865,2866,2890,2929,3228,2361,2363,2370,2501,2502,2832,2830,2713,2807,2808,2810,2811,2812,2813,3328,3329,3330,3331,3336,2608,2609,2610,2794,3236] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [1107,1083,1091,716,720,1084,1108,226,227,225,228,232,233,236,239,218,687,229,230,685,183,184,182,694,689,692,693,712,713,366,264,265,266,367,368,238,245,246,1183,1184,1185,1191,1192,443,444,231,352,546,547,667,662,663,664,666,668,700,742,754,792,721,745,781,784] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [1125,1129,696,1121,680,702,703,684,1124,1169,1170,1156,5456,675,554,555,557,676,5152,677,337,681,333,553,510,518,5452,5454,5167,1133,1155,525,5009,5444,509,517,5118,5165,5125,5126,5129,5130,5149,6116,6122,6128,6129,6130,6109,6131,5107,5108,2941,5106,5113,2939,6123,5109,5051,5102,5124] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [3290,3292,3294,3273,3277,2855,814,825,808,809,807,810,826,861,831,853,855,860,862,1145,1147,1128,1135,710,1132,1149,863,1136,1137,1138,888,2971,2976,2959,2970,2975,2954,2953,2955,3280,827,830,1815,1821,1822,1824,2998,3000,3007,3006,3282,3032,3033,3984,2995] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [6641,6642,6717,6951,6952,6953,7395,6954,6956,6876,6877,7471,6878,6601,6604,6609,6614,6615,6621,6623,6624,6719,6720,6721,7379,7479,7472,6606,6607,6971,6705,6961,6977,6982,6950,6603,7033,7001,7002,7004,7008,7396,7371,6980,6981,6775,6773,6774] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [4983,4985,5000,5001,2098,2100,2099,2066,953,2040,2041,5439,4979,5440,990,991,515,516,929,955,958,532,533,933,931,932,930,960,523,524,525,4644,4974,4650,4645,4649,4633] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [5148,5186,5187,5137,315,317,6142,6143,6144,6429,6430,6431,6426,6427,6420,6127,332,5146,5149,6162,6163,569,570,16,17,308,18,20,38,309,573,5153,5151,572,331,333,346,307] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [2680,2681,3075,3076,3078,4226,7417,7419,7420,7421,3107,4258,4259,4260,2690,6974,6989,6990,3098,3144,6691,6972,6969,6963,6692,6693,6968,3136,4200,4201,3134,3135] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [7089,7091,2689,7097,7098,7437,3301,2698,3058,3032,3030,3028,3029,3282,3287,3296,3300,3302,2688,2690,6998,6989,6988,2697,3076,3078] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [1533,1791,1800,7842,7877,7878,7880,1609,7876,7861,7862,7863,1750,1758,1761,1763,1540,1548,1547,1555,1601,1602,1575,1600] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [8085,8047,8053,8055,8087,1589,1592,1594,8058,8019,8060,1575,1574,1588,7863,7888,7889,7835,7897,7828,7836,7843,7821,8097] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [7828,7836,7056,8096,8097,1799,1800,1540,1548,1555,766,769,8095,768] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [7135,7137,7138,7140,7126,7128,7134,8421,8410,8153,8152,2466,8117,8121,8133,8134] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [7142,7135,7137,7138,7140,7126,8421,2735,2737,2738,2734,2467,2465,2466,2443] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [3691,2905,3959,2913,2911,6105,6106,6107,3960,3958,5847,5067,5855] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [2144,2735,2737,2734,2141,2480,2163,2442,2443,2467,2465] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [3698,3699,3726,3751,3752,5882,5880,3910,3882,3921,3923,3925,5881,3760,5896,5897,5899,5900,5901,3960,3684] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [4524,4610,4612,4613,2106,2108,4607,4608,4609,4611,2095,2094,2101,2102,2096,4598,2100,4517] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [4618,4620,4329,4349,4903,4626,4902,4327,4642,4657,4643,4644,4905,4906] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [4824,4794,4795,5325,4802,5543,4769,5539] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        