
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
        
        load "data/5JSM.pdb", protein
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
 
        load "data/5JSM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7382,7381,7383,6456,7378,6994,7354,7380,7355,7356,7379,7462,6460,6595,7468,7469,6468,7470,7481,7482,4359,4360,4361,6985,6988,7023,7024,7022,6995,7020,7021,6945,6825,6940,6941,6819,6821,6831,6832,6818,7479,6745,6746,7480,7477,6965,6962,6968,6974,6961,6969,6984,6448,6446,6447,6496,6444,6495,6591,6593,6497,6594,7491,6579,6963,6923,6926,6927] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [2239,2241,2261,2309,2807,2806,2257,2260,2263,2264,2329,2392,2404,2767,2770,2771,2783,2308,2265,2268,2269,2273,2310,2408,2578,136,3227,3228,3230,2665,3231,3232,3311,2666,2789,2662,2663,2784,2785,3317,3318,3200,3201,3210,3213,3312,3202,2579,3328,3329,3330,3331,3332,3333,2675,2679,2812,2813,2829,2814,3229,2834,2838,2839,3205,135,2828,2832,2864,2865,2866,2868,2809] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [155,682,136,151,153,154,157,198,681,684,680,687,704,707,688,1101,1099,1103,713,714,739,740,730,1077,1073,1074,533,535,1100,1102,1104,1183,1184,659,664,532,545,546,175,1189,1190,197,199,293,294,290,163,167,173,180,276,278,660,645,1200,1202,1203,1204,1205,457,1201,1212,456,549,646,2239,2241,744,742,279,281,286] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [4937,4379,5332,4934,5330,5302,5303,4770,5331,5333,5418,5419,4388,4392,5412,5431,5413,4691,4692,5432,5433,5434,4519,4939,4943,4944,5429,5430,4911,4912,4914,4894,4503,4780,4781,4784,4889,4890,4918,4919,4767,4768,4771,4688,4971,6429,4973,4969,6428,4422,4423,4515,4424,4876,4518,5441,4381,4382,4383,4384,4361,4380,4376,4872,4875] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [6544,544,6543,562,560,561,548,559,54,55,50,53,6331,493,6353,6845,6843,6364,6337,6346,6348,6834,38,6779,44,71,45,46,60,242,243,6830,6847,100] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [4794,4263,4269,4270,4271,4285,2673,2623,2678,4468,4296,4467,2674,4325,2356,4783,2357,2689,2687,2138,4279,2144,2145,2146,2153,2155,4275,4278,4280,4779,4778,2171,2160,4728] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [3298,2629,2654,2637,2640,2642,4323,4324,4325,4326,4321,2674,4474,4476,4478,4479,2794,2671,2793,2798,2801,3250,2795,3249,3264,3267,3281,3259,2819,2815,3255,4454,4471,4472,4473,4480,4481,4470,2373,2376,2377] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [245,246,247,248,251,255,7400,7401,7418,7433,6950,96,256,7410,7415,229,253,254,6830,6827,97,98,99,100,101,6793,6798,6949,7449,6796,6784,6785,6829,6951,7448,6810,6957,6954,6955,6564,6563] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [6531,259,1130,265,264,266,694,695,696,697,220,676,1129,1131,2342,2344,2378,2380,698,2331,2379,3259,2819,2821,2822,2823,3257,3258,256] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [6529,6566,6567,5359,6530,6531,4489,4490,5360,4926,4927,4928,6517,6518,4925,4455,4491,7409,7410,4445,6979,6976,6977,6957,6975,6978] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [1131,1139,1120,1121,1122,6531,6547,6549,6535,673,6550,6390,6392,6393,6538,6540,6387,6391,665,666,669,562,1170,512,6389,6385,6528] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [2348,5360,5368,5350,5351,2200,2351,2353,2197,2199,2196,2194,2198,2192,2343,2344,2347,2360,2362,2363,5349,4899,5399,4903,4895] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [2233,2228,2229,753,2226,2227,798,799,816,818,827,2220,2225,692,699,700,701,702,754,1109,1112,852,853,1124,1146,693,695] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [6976,4345,4350,4351,4353,7403,7420,6980,6981,7388,7395,7389,7425,7131,6973,6974,7034,7079,7080,7035,7099,7391,7097,4354,4357,4352,6983,7407] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [2239,2241,2261,2806,2329,2331,2803,136,681,220,135,2821,2822,2823] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [6425,4923,4925,6421,6422,6413,6418,6419,6420,5375,5079,4984,4983,5029,5046,5048,5345,5355,5080,4922,4929,4930,5353,5341,5357] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [126,128,129,132,125,127,120,2924,2818,2825,2878,2879,3240,2979,2943,2978,3244,3274] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [4549,4604,4605,4607,4406,4535,4636,5442,4862,4861,4550,4634,4602,4567,4603,4601,5439] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [2423,2521,2757,2437,2439,2438,2517,2518,2489,2490,3362,2491,2494,3341,2286,2288,3340,3359,3360,3361] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [4928,6428,6518,6427,6429,6448,4911,4443,6978,6962,4359,4360,4361,4380] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [5787,5878,5903,5518,5877,5920,5913,5503,5658,5660,6077,6078,5481,5473] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [1218,1010,1224,448,1203,1206,1194,455,457,430,426] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [3334,3342,3346,3352,2570,2571,3135,3136,3137,2579,3331,3322,2552] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [367,368,371,396,401,307,309,630,323,1212,1213,181,428,1230] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [610,611,109,301,106,302,105,108,123,585,599,615,587] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [6879,6881,6914,6668,6669,6878,6890,6632,6357,6318,6862] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        