
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
        
        load "data/5T1T.pdb", protein
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
 
        load "data/5T1T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7496,7518,7937,7948,7940,7971,3107,3108,7945,7947,7949,7106,7107,7500,7517,7986,7512,7985,3105,5349,3112,4144,3124,3119,3125,4151,4158,4163,4164,4165,5347,5341,5356,7340,3008,3445,3446,3447,3443,7972,7333,7334,3099,3050,3123,3101,3128,3129,3159,3148,4171,4173,4172,7101,4170,7491,7372,7369,7102,7105,7365,3161,7325,7326] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5416,5440,5441,5442,7623,7630,7642,875,5698,5681,5688,5690,5691,7624,7625,7626,5408,7669,7671,5406,5407,7643,7646,7647,5384,5414,5383,5378,5379,5380,5403,6431,6432,6433,6434,8686,8685,7944,7951,7961,7963,7678,7953,5362,7954,7964,7965,7677,7527,5700,5702,7526,5686,5263,5253,5254,7641,7568,5361,5363,3094,5360,5367,5354,5305,5356,3108,7945,7517,7703,7705,6425,6426,3101,3086,3092,6419] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [887,888,889,7612,886,893,942,905,906,932,4835,1948,1949,1951,909,910,5675,5678,5708,5682,5674,5677,5723,5233,5227,5228,5229,7610,5249,5102,5106,5077,789,1224,1226,1228,1216,5107,5108,5109,5070,5071,5062,5063,831,1222,941,1227,940,966,936,880,882,5237,5254,5255,5256,4836,4839,4840,4841,5685,1941,1943,1942] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [2514,2516,3043,3010,3011,3014,3018,3019,2525,3406,3381,3052,2983,2985,2990,2998,2987,2511,2513,2519,2471,3090,3082,2565,2566,2567,2668,2532,2517,2653,2992,3405,2845,3482,3389,2960,2961,2962,2963,2964,2844,2846,2971,3481,3490,2669] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [7561,6992,6999,6978,6980,6985,6986,6981,6987,6988,7923,7536,7537,7899,7924,8000,7907,7999,7505,7510,7499,7501,7503,6983,6984,7516,7508,7528,7529,7363,7570,7600,7608,7362,7489,7364,7478,7479,7480,7483,7482,7484,7120,7033,7136,7034,7135,7032,8008] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [4726,4766,4767,4768,4719,4720,4721,4733,4734,4735,5273,5269,5274,5298,5337,5307,5245,5265,5266,4718,4854,4717,4715,5240,5253,5345,4670,4672,4712,4713,4714,5246,5661,5660,5100,5099,5215,5216,5217,5219,5636,5644,5737,5736,4869,4870,5745] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [248,297,249,768,771,791,385,792,795,298,772,773,1186,1187,201,245,246,247,257,800,264,266,299,799,1162,1262,1263,252,253,766,752,400,401,744,746,742,745,747,741,824,779] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [371,373,760,763,765,780,781,782,372,367,1208,1209,759,319,320,334,5506,6651,1212,5542,5543,5544,6709,6710,6650,6674,6676,366,5085,5483,5484,5486,5068,5069,5076,5077,5078,789,779] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [6746,6769,4470,6770,6771,6773,7077,6791,6765,7385,7383,7377,4468,4471,4472,4473,4204,4205,4462,4185,4186,7086,3145,3148,3150,3136,7099,7101,7100,7386,7388,7389,3152,7076,3183,3208] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [931,933,4834,2246,2248,2249,2251,4833,4835,926,929,5125,5126,4848,4506,4508,5123,4523,4525,1963,1964,1982,1983,2240,1947,917,919,4810,4811,4812,4809,4817,4819] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [2999,3000,3001,2982,2978,8936,8911,7769,7807,7341,3427,7747,7749,7331,7332,3430,3429,3431,7778,7776,7774,7805,7806,2973] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [8376,8383,8670,8390,8391,8444,1689,8443,8452,8418,1675,1688,8631,8633,8628,8659,8661,1654,1655,1690,1691,1692,1673,1674,8620,8398] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [8007,7260,8020,8021,7223,8004,7136,7134,7135,7002,7003,7006,7008,7009,7015,8029,8030,7013,7257,7465,7153,7221,7872] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [8669,7584,1926,1927,1640,1648,8383,8670,8391,1925,8667,8668,845,847,848,8657] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [5076,5077,5078,789,779,1228,5085,5086,5466,5486,880,882,831,5708,889,5441,5709] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [2702,3505,2701,3489,2546,2742,3503,3513,2539,2543,2544,2686,2685] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [6130,6183,6184,3910,6123,6410,6131,6138,6158,3897,3911,3912,3914,3915,3916,6192,3896,6401,3895,6360,6371,6373] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [7703,7704,7705,7700,7701,7339,7341,7972,7349,7729,7348,7340,3008,2998,7971,3108,7967,7953,7954,7958] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [1927,1640,1648,1633,8418,8431,8432,1675,1700,1701,1655,1917,1918] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [4148,4149,3862,4147,3870,6409,6123,6410,6408,5313,5319,5321,3066,3064,3067] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [2258,2260,2306,2307,2305,2868,2304,2870,2871,2610,2324,2618,2608,2632,2634,2633,2647] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [270,487,1270,523,1283,1284,399,400,401,482,418] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [7252,7279,7275,7277,7278,7305,7285,7835,7307,8052] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [6716,6719,6709,6680,6706,330,332,6681,6682,6683,232,331,333,334,335,6739,329,140,123,6705] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [3897,3870,3869,4140,6171,3922,3923,6172,6173,6175,4149,3855,3862,6158,6157,3877] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        