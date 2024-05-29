
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
        
        load "data/7ATU.pdb", protein
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
 
        load "data/7ATU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [748,750,776,777,1796,1797,1798,1793,2878,2880,2907,3948,2509,2510,2511,3951,3953,2905,3952,2924,1775,1800,1772,1774,1803,3926,3928,3929,2525,2516,2517,2518,396,397,398,989,991,405,406,757,725,3121,3123,2888,2526,2855,2925,2926,2922,2923,2932,1837,1838,1839,2496,2960,2959,2503,2498,2499,2501,2495,2500,3991,3994,838,379,389,390,391,795,796,801,803,775,381,380,4016,3993,4017,4018,3990,792,793,829,830,794] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [7523,6618,7524,6251,6253,6613,6594,7522,4784,5795,5796,5797,4782,4783,5793,5838,5839,6241,6245,6258,6259,6260,6252,6242,6243,4759,4791,4792,5022,5861,5862,5023,6646,6647,7501,7502,6610,6611,5771,5773,5794,5798,5799,5800,5803,5792,5804,7521,6268,6267,6574,6798,7499,4442,4811,4440,4835,4457,4447,4456,4434,4448,4449,4827,4828,5774,4863,4864,4829,4830,7526,7529,7530,7531,7525,6566,6567,7561,4428,4432] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [3162,3163,3164,3165,3166,3167,3168,3047,2301,2541,2299,2660,2665,2661,2551,2553,3159,3146,3000,3002,3147,3148,3150,3152,3153,3154,3157,2491,3191,2465,2463,2464,2983,3190,2984,2677,2679,2302,2177,2319,3161,3178,3179,2466,2640,2643,3180,2467,2220,2311,2315,2316,2304,2638,2639,3192,3193,2199,2186,2200,2176,2210,2336,2540,3074,3141,2538,2537,2683,2686,3143,2532,2943,2944,2699,2701,3075,2710] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [418,421,528,944,945,1031,1032,1033,1034,1035,1036,1030,207,1029,577,75,550,193,195,532,527,192,194,506,205,67,71,110,100,104,73,76,417,431,433,505,507,510,1009,1018,1022,1014,1015,1021,1025,1046,1047,346,374,412,349,1061,1048,1060,814,853,813,1059,555,553,568,546,544] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [4472,5050,5053,5059,5064,5066,5060,5061,5079,4465,4469,5041,4847,5090,5054,5056,5078,5080,4395,4396,4422,5091,5092,5093,4398,4482,4566,4545,4548,4463,4848,4468,4565,4267,4277,4278,4241,4282,4887] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [6209,6210,6293,6295,6211,6356,6855,6868,6869,6353,6374,6106,6867,6888,6866,6208,6279,6280,6283,6234,6236,6274,6630,6631,6842,6837,6840,6856,6107,6830,6826,6828,6829,6819,6816,6817,6823,6824,6825] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [1615,1621,1982,2012,2015,1610,1604,1592,1590,1544,1541,2051,1642,1655,1581,1585,1605,1579] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [7688,7352,7316,7321,7335,7720,7312,7310,7324,7721,7717,7346,7323,7373,7376,7378,7276,7277,7311,7272,7274] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [6009,5609,5977,6006,6010,5604,5639,5996,5997,5636,5649,5544,5545,5576,6028,5599,5587,5585] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [3786,3799,3722,4157,4170,3749,3750,3754,3684,3720,4171,3726,3731,4137,3748,3733] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [4565,4570,4267,4268,4241,4588,4591,4582,4584,4604,4606,4607,4608,4615,4231,4472,5063,5064,5065,5066,5067,5068,4221,4976,4978,4979] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [3211,2964,3209,2458,2459,1918,1915,1922,1924,1925,1935,1944,2958,1807,1808,1845,1846,2965,1841,2962,2967,1843,1872] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [919,920,921,922,923,1156,1347,85,1114,1115,1118,1124,1125,1142,1391,1392,1393,1395,890,1121,891,1106,591,592,593,594,75,81] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [4027,341,4073,834,342,4028,4070,4077,4080,4025,837,3996,3999,4000,4001,3998] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [6654,5846,5922,6649,6651,6652,6663,6671,5872,5918,6203,5925,6204,5807,5808,6645,5845,5843] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [3049,2724,3043,3480,3051,3052,3053,3293,3294,2725,2726,2727,3521,3524,3528,3532,3277,3279,3262,2188,2191,2195,3527,3050,3048] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [7567,7571,7572,7632,7634,7635,4389,4390,4871,7596,7598,7599,7569,7628,4862,4869,4868,4886,4888] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [6724,6890,6891,6893,6707,6708,6845,6846,6746,6838,6841,6737,6738,6739,6896] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [2195,3258,3255,3262,3052,3053,3294,3242,3020,3037] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        