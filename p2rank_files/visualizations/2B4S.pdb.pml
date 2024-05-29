
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
        
        load "data/2B4S.pdb", protein
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
 
        load "data/2B4S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3494,3495,3496,3486,1495,1494,80,2126,2123,2125,3511,3513,107,111,113,77,98,99,3500,3502,3503,3504,3508,3509,3520,3521,1491,1485,1488,1490,1482,2093,2098,2099,2101,3235,3232,2100,2091,2094,2095,100,125,2089,2092,2988,2991,2995,2999,1502,1208,1205,1503,1526,1500,1501,1499,2994,2839,2844,3537,3538,1437,1438,1439,1440,2876,2878,2996,3001,3003,2604,2607,2608,3012,3013,3016,1508,1509,1521,1516,2582,2609,2895,2603,2560,2581,2591,2598,3177,3179,3233,3231,3176,4528,4510,4511,4512,4513,4515,4514,1473,3257,3258,3260,3208,3228,3256,3223,2842,2845,2837,2843,2855,4562,3286,3287,1460,4561,2833] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [6141,6132,8082,8084,8085,8087,7430,7432,7433,8088,8105,6136,6732,6733,6735,6736,6739,6741,6742,9097,9098,9099,6730,4753,6734,4749,4767,7427,7581,7582,7583,6144,7462,7464,7466,8122,7420,7421,7425,7428,6080,5543,6135,6140,6078,6101,6102,6129,6123,6124,6126,6114,6079,6081,9112,9111,9094,9095,9096,9145,7443,9119,9146,7424,5544,8091,8093,8070,8092,7767,8095,8097,7817,7818,7819,4741,4742,7841,7870,7871,7842,7844,7796,7816,7808,7811,7812,7809,7810,7840,7797,4722,6767,7764,4719,4755,4740,7579,7584,7587,7189,7190,6766,6167,6143,6149,8078,6150,6162,7142,7185,7484,7162,7163,7164,7186,7173,5849,5851,7765,7776,7775] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [7069,7223,7573,7015,7067,7068,8057,7012,7013,7011,7016,7619,7615,7616,7031,7032,7034,7024,7018,7019,7020,7626,7571,7578,7592,7208,7590,7595,7039,8029,8142,8043,7224,8134,8058,8056,7456] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [2437,2438,3036,3038,2433,2486,3031,2436,2430,2431,2434,3027,3028,2641,2449,2485,2487,2986,3445,3472,3473,3474,3035,3557,3459,3555,3002,3007,2626,3004,3008,3009,2868,2442,2450,2452,2457] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [907,908,984,1002,959,1413,930,931,1001,1167,1169,1185,1247,1168,1230,1411,1433] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [7301,7302,7303,7305,2954,2955,2755,2941,2942,7530,2754,2753,2655,2744,2746,7543,7342,7341,7343,2713,7529,7237,7332,7535] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [5871,5552,5553,6052,6054,6074,5622,5625,5888,5640,5643,5601,5570,5571,5636,5826,5810] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [4686,4688,4695,4698,7614,8074,8075,7604,7613,6156,6806,6807,6826,6827,4659,4657] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [6692,6693,4864,4866,6652,6694,6695,6687,6690,4851,4852,4856,4823,4825,4822,4821] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [7314,7315,2783,2760,2761,2762,2763,2726,7350,7349,7348] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [7937,7942,7908,9006,9007,9162,9001,9211,8989,8987,8990,8994] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [358,939,357,359,360,380,387,1480,1729,1734,1469,2080,1478,1468,2081] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [3025,3026,2164,2166,2165,1515,48,50,22,60,2185,3016,2194,3490,3491,2127] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [2456,2457,2468,2735,2453,2467,3572,3579,3580,3423,3724,2455,3571] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [1735,1739,1729,1730,1734,1469,2080,1478,2081,1758,1723,1751,1747] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [2053,2054,2046,2049,2051,2052,223,180,181,183,184,2011,210,209,179,214] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [795,796,797,799,1300,810,770,1298,1299,772,1095,1113,1114,1313,1314,768,475,476,813] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [5440,5441,5442,5444,5755,5417,5458,5939,5940,5941,5954,5413,5415,5123,5736,5955,5419] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [3071,3267,3268,3200,3179,3233,3231,3201,3508,3509,3235,3266] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [5028,6119,6121,6722,5580,6110,5004,5008,6375,5035,5003,5005,5007] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [4660,6851,6853,6823,6821,6826,6552,6555,4650,6551,6501,6548,6549,6844,6845,6878] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [2829,2826,2831,2836,2840,4559,3334,4619,4605,4606,4569,4570,3332] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [8064,8093,8092,7660,7767,7819,7850,7659,7851,7852] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [2472,2646,2639,2640,2449,2487,2458,2469,2452] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        