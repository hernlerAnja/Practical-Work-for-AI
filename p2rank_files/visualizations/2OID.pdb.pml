
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
        
        load "data/2OID.pdb", protein
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
 
        load "data/2OID.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1040,1048,1049,1050,592,356,597,600,619,1072,5020,5304,5306,480,484,5302,5294,5300,465,515,516,5043,5044,5008,5009,5010,5012,593,355,351,1086,613,479,1087,477,468,469,496,476,461,512,1073,5295,4867,4964,4971,4982,4983,2898,6015,6020,6021,6022,4966,4967,2900,5014,5017,5018,5019,5016,5042,4987,4988,5007,4984,6030,6027,6028,6029,350,5305,4909,5299,4958,4960] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [3259,3226,3227,7133,7126,7149,7150,7146,7127,7128,7129,2779,2780,7172,7174,7169,8214,8216,7170,3273,2778,3225,7464,7466,7468,7180,7181,7182,7462,7176,7179,7206,7178,2629,3260,3274,2613,2621,2622,2625,2614,2657,2660,2611,2641,2610,2659,2661,3229,3233,3235,2805,2806,2807,3236,8208,2434,2437,2784,2787,2438,2439,8206,8207,2433,8194,8201,8205,713,8213,7454,7456,7461,2606] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [1024,1101,1100,1102,1103,1106,282,283,284,235,236,281,237,239,240,228,601,603,604,370,196,229,610,507,606,590,249,241,242,248,270,1008,1109,582,584,384,386,583,585,579,260,1025,1000,633,638,659,661,617,609,630,631] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [3187,2466,2467,2468,2330,2352,2825,2848,2335,2338,2344,2331,2334,2793,2452,3211,2788,2790,2364,2365,2366,2818,2820,2824,2796,2817,3212,2323,2363,2360,2369,2379,2771,2772,3195,3288,2770,3287,2548,3293,2766,2777,2767,2769,2650,2651,2652,2768,3296,3294] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [7426,7427,7391,7402,7403,7410,7502,7503,7392,6570,6576,6571,6569,6575,6578,6580,6581,7006,6572,6573,7005,7011,7008,7012,7063,7035,7039,7031,7032,6618,6619,6720,6982,6984,6721,6987,7511,6867,7510,6705,6992,6981,7073] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [779,777,778,1061,1062,1063,1064,1065,1066,3232,3249,3251,3253,726,742,724,769,771,772,805,806,1054,1045,2931,2934,2918,2930,4953,4951,2911,2929,2913,2912,3950,3957,3963,4945,748,2993,744,747,743,3241,731,725,768,2935,2954,2955,2956,2960,3972,2991,2964,2965,2966,3971,2992,1796] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [4456,4458,4459,4460,4704,5264,5340,5341,5248,4703,4705,4480,4481,4482,4820,4821,4822,4823,4824,4825,4584,4841,4846,4568,4819,4830,4843,4901,4869,4870,4873,4877,4878,4849,5265,4857,5240] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [6319,6325,6326,6328,6330,336,6061,325,350,333,4995,6043,6062,5046,5004,5007,4,27,327,28,29,30,32,47,48,49,532,349,351,364,5009,5011,528,529] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [6692,3036,3034,3035,3037,4214,2620,7450,7451,7452,3094,4248,4247,3057,4189,4188,3093,3095,3033,3058,3062,6693,6999,7002,7004,7022,2628,7020,7021,6686,6687,6994,6654,6675] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [2135,2137,2133,8513,8511,2676,2677,7173,7169,7166,7171,8248,7157,7159,7199,8247,8505,2674,2673,2129,8514,8515,8516,2110,2661,2433,2155,2408,2409,2432,2418,8228,8229,8212] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [2385,2386,2387,317,319,2320,2401,2402,2237,2240,2238,2239,2222,305,320,116,133,314,315,191,192,193,195,197,198,211,212,132,134,213,217,131,2789,2791,2805,2309,2312,2267,2319,2298,2301,2302,2285,2308] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [474,475,846,870,907,4858,4859,483,4860,5286,5288,5289,5290,2078,848,849,850,2044,2045,2047,4554,4555,4538,4544,4549,4550,2021,2022,908,4553,4837,4838,4840,4832,4502,4503] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [1072,482,484,1054,801,492,1059,1068,1073,1074,830,491,802,805,806,800,850,4867,483,4966,4967] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [7913,7966,8148,7912,8153,8155,7974,7986,8157,1542,1543,7965,7898,8150,8142,1529,1528,1546,1548,8114] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [559,63,65,153,93,553,392,394,152,381,376] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1555,1742,1744,1500,1501,1502,1563,1554,7952,7953,1487,1772,7940,1731,7957,7954,7939,1703,1529] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [5780,5779,5727,5726,3696,5967,5969,5971,5956,3710,3713,5788,3715,5928,5997] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [2989,2988,3017,2629,3260,2637,2627,3241,3242,3259,7128,7129,2967,3246,3255,3261,3037] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [3909,3911,3668,3898,5771,5773,3721,3722,3720,5753,5754,3730,5768,5769,3948,3669,3661,3904] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [4925,5719,2872,6004,6005,6006,3946,3947,3948,3669,3661,2864,2870,5727] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        