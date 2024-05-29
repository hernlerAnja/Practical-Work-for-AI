
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
        
        load "data/4YO6.pdb", protein
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
 
        load "data/4YO6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5399,5401,5675,5683,5685,5687,5248,5249,5427,5666,5673,5676,7641,7961,7963,7964,7965,7625,7626,7623,7568,7619,7630,873,8668,8675,7624,875,889,5668,5669,5671,5368,5369,5388,5390,6408,6416,7705,5392,5393,7668,7670,7678,7704,7677,7642,7647,7643,7646,8694,8695,8697,5425,8689,8688,5365,6414,5364,5352,5363,7951,7944,7526,7516,7517,5346,5347,5345,7948,7949,3085,7953,3083] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [3002,2521,2522,2523,2524,2527,2528,3396,2836,3372,3397,3472,3473,3005,3009,3010,3034,3043,2597,2974,2976,2989,2480,2981,2978,2982,3001,2534,3373,3380,3081,2574,2576,2529,2531,2674,2675,2676,2677,3481,2541,3480,2555,2557,2533,2540,2562,2526,2575,2662,2951,2952,2953,2954,2955,2956,2957] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [5250,5251,5254,5230,4746,4747,4748,4834,5258,5259,4713,4716,5085,5232,5645,5202,5204,5721,5629,5730,4849,4850,5231,5646,5621,5227,5223,5238,5211,4696,4693,4694,4700,4695,4698,4701,5283,4652,4697,4706,4705] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [3103,3115,3116,3119,3120,4157,7937,7512,7491,7940,7496,7519,3438,3114,3436,7337,7985,7986,7326,4149,4150,4151,7097,7099,7500,7098,7502,7493,3150,3152,3139,7369,7372,4156,4159,5341,7945,7946,7948,5334,7950,7938,7941,7518,3097,3098,3099,3090,3092,3096,7971,7972,3108,5326,5332,2999,7340,3041] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [7503,7505,7508,7025,7112,7024,6972,6973,6975,6976,6983,6984,6990,6991,7026,6978,6981,6982,6970,7047,6974,6928,7363,7362,7899,7923,7924,7364,7999,8000,8001,8008,7907,7888,7889,8006,8007,7480,7482,7127,7128,7478,7479,7481,7484,7522,7523,7528,7529,7532,7570,7536,7537,7516,7900,7561,7608,7600,6929] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [792,824,793,795,799,800,1185,1186,1187,1162,1163,779,248,764,785,791,771,768,772,773,833,250,251,201,236,243,247,244,245,246,871,863,249,297,298,299,252,254,255,256,257,267,400,627,746,747,1262,1263,1270,1271,268,1170,385,752,741,742,744,625,626] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [5659,5660,5234,5662,5707,5708,888,941,5091,5213,932,887,886,893,1934,909,905,906,1961,1963,910,5667,5670,7612,1953,1954,1955,1960,4816,4821,4815,7610,5663,5218,5222,5240,5241,5224,4820,889,5693,789,1226,1227,1228,942,1222,1224,940,1216,966,5047,5048,5055,5056,5059,5062,5694,1214,5094,5093,5095,5043,831,880,1217] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [7729,7748,7749,7348,7746,7747,8939,8937,2973,2975,2989,3418,3419,7339,7341,7331,7332,2999,7340,2990,2969,2991,3420,3422,3421,7806,8914,7769,8913,7807,2649,2644,2632,2638,2643,2964,7349,3099,7954,3092,7953,7967,7971,7972,7700,7958,7705,7703,7704,7701] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [5053,5054,5467,5468,1212,5491,5528,6658,5469,5470,6691,6692,6656,6657,6632,5529,6633,366,5471,1209,1210,759,1211,765,763,780,781,5063,760,754,371,372,367] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [4457,4459,4454,4456,7075,7076,7077,7377,7383,7385,7386,6781,6783,7069,6759,6738,6747,6755,6757,6761,3174,3199,4458,6728,3136,3139,3140,3141,3143,7389,4156,4159,7092,7078,7106,7388,7067,7097,3127,4171,4191,4172,4190,4448,4155] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [5107,4483,4484,4485,4486,4488,933,5108,5110,5111,931,2258,2260,2263,1994,1995,2252,926,929,917,919,959,4790,4791,4789,4797,4799,4813,4814,1959,1975,1976,4503,4505,4467,2261,2262] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [5062,5694,5061,5063,789,780,781,779,5423,5425,5675,5680,5689,5693,5676,889,888,5422,5451,5471,5070,5071,6692] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [1645,1897,1939,1652,1660,1895,1659,1712,1713,1900,1902,8435,1721,8436,8438,1889,1909,1930,8421,8420,8434,1687,1667] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [8379,8394,8393,8673,8386,8401,8448,8421,8447,1700,1701,8434,8446,8455,8631,8634,8636,8663,8623,1702,1704,1686,1687] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [7907,7888,7889,8006,7872,8007,8136,8137,8143,8008,6983,6984,6990,6991,6994,6995,7004,7006,7007,7008] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [7835,7833,8052,7307,7276,7277,7278,7279,7252,7285] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [4098,6157,3855,3909,3908,3917,6140,6153,6154,6139,3883,3856,4126,3848,3863] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [4135,3856,6392,3848,6390,6391,3057,5304,5306,4133,4134,5298,6105] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [2417,2418,2606,2607,2608,2609,2610,2611,2612,2400,8969,8999,8972] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [1315,515,539,541,569,570,548,1098] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        