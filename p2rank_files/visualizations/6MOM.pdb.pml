
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
        
        load "data/6MOM.pdb", protein
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
 
        load "data/6MOM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5524,5526,5528,5522,5488,5491,5492,6552,6558,6559,6560,6561,2640,5518,5552,5555,5521,5508,5511,5512,5513,5515,2637,2639,2638,2615,5553,5576,6859,6860,6861,6856,6858,2287,2284,2286,2624,2616,2621,5471,5469,5470,5468,5475,3530,3524,3528,7775,3532,6553,3538,6557,5499,6573,6593,6574,6592,6850,7773,6546,6539,5808,5813,5371,5818,5820,5814,5816,5413,5819,2910,3081,3060,3061,3066,3063,3067,3070,2643,2898,3570,2864,2865,2872,2873,2914,2918,2934,3062,2931,2652,2933,2857,2278,2930,2282,2305,2307,2345,2265,3516,3517,3515,3518,3555,3569,2885,2879,3534] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [7733,7721,7695,7699,7700,7165,7121,7164,7166,7113,7114,7119,7112,7117,7118,7763,7724,7679,7691,7692,7664,7666,7671,7115,7116,7252,7067,7068,7069,8067,8167,8168,8176,8075,8174,8175,8169,7268,7266,7668,8091,8092,7641,7642,7643,7645,7526,7527,7644,7646,7647,8068,7130,7131,7123,7124] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [3102,3502,3099,3106,3107,2511,2512,3086,3073,3078,3477,3478,2908,3501,3583,2907,2516,2570,2571,2658,2572,2515,2513,2517,3069,3071,3075,2524,2525,2537,2518,2521,3485,3590,3592,3591,2538,2672,3048,3049,3050,3052,3140,3128,3131,3170] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [230,233,231,232,237,238,771,1168,1167,775,1143,244,1144,1151,747,767,768,748,744,738,740,742,755,234,235,281,280,282,382,721,722,1255,384,1262,1263,603,1254,1256,1257,247,248,243,236,368,717,718,719,601,602,188,499,501,723,776,797,800,761,847,809] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [863,864,865,8108,8109,916,917,7536,908,1927,3182,862,869,885,886,1954,1956,882,1211,1213,1214,1215,918,912,915,942,944,1202,1203,1209,914,7681,1946,1947,1948,7238,7239,7233,7237,7234,8113,3180,1934,1941,8153,7528,7532,7655,8154,7533,7534,8139,8106,8140,7682,8105,7659,7674,7653,7654,7656,7660,7663,7491,7495,7501,7516,7480,7482,7483,7475] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [5778,5779,5754,5860,5866,5868,5209,5859,5867,4877,4876,4878,5327,4975,5328,4825,4823,4824,4829,4830,5377,5381,5382,5403,5406,5755,4835,4836,4842,4843,5762,4844,5350,5353,4828,4961,5323,5324,5325,4779,4780,4781,4826,5348,4827,5361,5373,5374,5415] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [905,906,907,909,7552,6902,6903,6906,6905,6901,2258,2259,2245,1969,2243,2246,2248,1987,1988,2237,902,1956,893,895,934,6878,2247,965,7233,7237,7207,7208,7209,7210,7231,7232,7218,1968,7215,1952,7548,7549,7655,7654,7551,6904,6923,7246] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [3097,3545,3547,3548,3549,3196,8112,8116,3096,3193,3211,3138,3187,3189,3254,3255,3537,3195,8119,8121,3200,3217,3212,7793,3523,7788,7789,7689,7782,8133,7805,7804,7840,8128,8129,8130,8131,7841] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [765,864,865,8121,7863,7891,7892,7912,7512,7499,7501,7503,7511,7864,8139,8126,8135,8141,8140] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [2870,2871,5803,5804,3319,3320,3322,4516,3318,3342,3349,3379,3380] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [1645,1651,1652,1653,1701,1702,1638,1882,1883,1884,1887,1889,1680,1710,4021,4022,1932,1660,1922,4008,4009,4023,4024,4026,1876] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [3982,1645,1653,823,4256,1930,1931,1932,4257,4258,821,824,3974,3154] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [6283,8604,8624,8830,8582,8596,8597,8832,6296,6297,8644,8645,8646,6282,6307,8869,6300] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [3551,3555,3556,3557,2881,2883,2885,2893,2894,3302,3278,3277,3301,3542,3322,3296] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [6248,6256,8589,7745,7747,6535,7748,8869,5429,8867,8868,6536,6537,5427,5430] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [6283,8624,6248,6256,6263,6241,6255,6498,6487,6493,6495,6507,6525,6500,6317,8633,8634,8636,6308,6309,8632,8623,6513,6518,6537,6520] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [3982,4034,4035,1679,1680,1690,4258,4219,4221,3974,3989,4009] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [9115,9140,1196,1198,7969,7932,7970,9138,9139] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [2870,2871,5800,5803,3319,3320,3322,2881,2883,2893,2894,2877,5362] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [8488,9095,8460,8461,8465,8467,8468,8457,8458,8226,8224,8230,8237,8241,8242,9092,7957,7958,7956,7954,7992,7955,9098,7986,8240] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [7134,8057,8338,7130,7131,7138,7139,7143,7144,8035,7145,7146,7147,7148,8330,8034,7124,8331,8332] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [4836,4843,4846,5762,4840,5743,5744,4841,4850,4856,4858,5722,5721,4857,4859,4860,5996,6005,5999] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [3216,3217,4282,3212,4273,4274,4272,4280,3200,3254,7841,7868] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [3723,3445,2540,2537,2532,2534,2550,2552,2544,2553,2554,3467] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [247,250,254,260,259,262,264,1111,1110,1109,1396,1393,1394,1133,1395,1402] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [5808,5813,5822,5826,5550,5578,5579,5599,5825,5827,5181,5183,5185,5193,5194,5553,5576,5551,5555] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [4108,4144,3970,3935,3936,3938,3937,4079] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        