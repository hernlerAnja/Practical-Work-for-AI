
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
        
        load "data/2UZX.pdb", protein
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
 
        load "data/2UZX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6117,6165,6166,6167,6168,6185,1258,1259,1581,1582,1583,6145,6153,6146,1427,1428,1579,1580,6149,6132,6148,1434,1435,1436,5162,5178,5179,1608,1596,1597,1598,5177,4246,6118] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [8014,8021,8022,8023,8015,8168,8169,8170,8195,8183,12732,12733,12740,11764,11765,11766,8167,12752,12754,12755,12772,12705,12704,12719,7846,7845] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [9174,9077,9180,9183,9184,9194,9196,9575,9548,9578,9582,9007,9009,9099,9571,9100,9027,9539,9541,9080,9521,9523,9519,9520,9010,9549,9572,9528,9570] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [2952,2954,2961,2962,2983,2984,2985,2988,2422,2932,2991,2941,2995,2834,2440,2490,2493,2513,2593,2594,2596,2597,2607,2936,2934,2609,2933,2512] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [7287,7288,7290,7291,7293,12796,12814,7631,7634,7635,7464,7465,7468,7108,7109,7111,7282,7278,7279,7280,7265,7467,7446,7119,7120,12795,7808,7641,12812,12813,12826,12830,12848,12849] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [6443,6446,6239,6227,6225,6226,6243,532,533,692,701,703,704,706,877,878,881,859,691,522,524,678,6261,6262,6207,6208,1047] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [7176,7018,6998,7002,5357,5365,4998,5000,5001,7019,4997,5362,5360,5358,4217,4218,4220,4221,6717,4211,6723,5341,5343,6726,4994,4979,6731,6727] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [4196,4194,5329,3693,3695,5310,3694,3699,4186,5326,5323,5321,2360,5322,3160,3162,2359,3158,3700,2365,2375,2741,2744,3166,3163,2737,3177] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [415,144,411,431,432,11944,136,139,137,130,10807,10808,589,11586,11588,10798,10800,10805,10804,11585,11587,11581,11584,11947,11949] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [10773,11897,11916,10274,10280,10282,11909,9747,9749,9750,9753,10783,10781,10286,10281,10283,11910,11913,8952,8962,11908,8947,9324,9328,9331] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [9296,9298,9297,9452,9235,9459,9466,9215,9217,9294,9212,9214,9314,9442,9443,9444,9485,9488,9499,9500,9501,9502,9503] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [6756,2395,2396,2403,2404,2410,2412,6754,6755,6844,5352,6724,6725,6726,5353,2384,5370] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [11939,167,168,257,169,8991,8997,8999,8990,8982,8983,8971,11938,11940,139,137,138,11957] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [2898,2879,2855,2913,2914,2912,2915,2630,2628,2916,2710,2711,2648,2856,2857,2865,2872] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [4814,4815,4817,4818,4588,4590,4620,4592,4630,4808,4809,4810,4586,4054,4794,4796,4617] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [6831,2975,2981,2984,2951,2953,2955,2392,2394,6830,2398,2399,2442] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [9571,9029,9540,9542,9538,8985,244,9562,9568,8979,8981,8986,243,9401] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [10641,11174,11175,11177,11179,11402,11404,11405,11408,11207,11208,11381,11383,11217,11395,11396,11397,11173,11204] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [3152,2731,3161,3162,3149,3146,2361,2723,2350,2734,2735,2348,2360,5322] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [4907,4909,4931,4932,5125,5126,4894,4920,4930,4896,5104,5105,5234,5103,5209,5235,4899] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [10244,10264,10634,11274,9963,9956,9957,9965] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [3883,3835,4079,4132,4131,4149] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        