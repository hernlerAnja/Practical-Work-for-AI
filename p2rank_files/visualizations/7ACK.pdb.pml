
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
        
        load "data/7ACK.pdb", protein
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
 
        load "data/7ACK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4614,5570,5173,5176,5571,4562,4565,5642,5643,4880,4740,5554,5536,5549,4575,5647,5648,5650,4574,4567,4568,5119,4983,5117,4723,5115,5116,5118,5120,4613,5132,5137,4560,5139,5142,5145,4559,5125,5121] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [729,95,264,265,107,108,1178,100,101,147,648,248,92,93,145,146,673,1098,690,697,704,1064,1077,1099,689,681,644,512,646,649,1170,1171,1172,1175,1176,1082,643] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [637,40,41,42,542,543,545,558,560,4,228,534,536,242,533,7889,7857,7882,7448,28,31,192,7447,7879] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [4471,3392,4495,4496,4498,4473,3424,3417,3416,2973,2982,2983,4667,5015,5016,5017,5005,5014,4508,4509,5032,4704,5006,5008,4703,5109] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [565,568,569,570,4472,4473,4487,3381,343,3383,3385,4471,3380,3386,3387,4496,4498,3342,3343,3348,3349,4497,3353,3355,3356,4489,3344,3346,3415,3417,3379,3416,564,574,298,300,579,587,588,594,296,297,302,4468] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [7848,5065,7809,7818,5,6,19,7820,7821,7816,7843,7844,7851,7852,7808,7845,7807,7813,7817,7881,29,30,31,5040,5041,5046,5042,5053,4773,4775,7850,7878,4818,7811,4772,4795] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [8807,5736,5737,7299,7969,7305,7308,5720,7309,7970,8034,8036,8083,8107,8114,8134,8135,8805,8003,8005,5722,5723,8104] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [3504,3505,3685,3686,3538,3540,3569,3571,3658,1251,3665,2840,2844,2848,2841,2843,2834,2836,4348,4349,4358,1265] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [2210,2200,2416,2395,2396,1244,2427,1258,1473,1477,1252,1486,1490,2201,1257,1231,1478,1237,1484,1479,1239,1246,1249] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [3779,3789,3790,3780,3809,3781,3853,3732,3497,3480,3831,3826,3827,3832,3485,3491,2550,2554,2545,2521,2933,3796,2896,3730,3740,3758,2546,2563,2564,2905,2898,2899,2902,2871] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [4477,4478,4502,4479,4730,4526,4527,5092,4622,4748,4749,4519,4523,5094,5075,5074] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [7367,7363,7364,7336,7945,8281,8275,8276,8280,7361,8178,8179,8183,8185,7956,7962,8181,8182,7950,7953,7955,7339,8189,8302,7010,7028,7029,7011,7012,7370,7398,8241,8229,8239,8258,8245,8228,7019,6986] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [5698,7976,7977,7978,7979,5697,5692,5693,5694,7609,7610,7315,7317,7970,7313,7314,5706,5707,5720,5757,5736,5737,7972,8004] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [1235,1248,3539,3511,3512,3513,3514,3505,1225,1226,1234,3145,1264,1265,1285,1287,1267,1222,2852,1221,2849,3135,3144,2848,2850] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [11,620,622,35,52,56,58,621,273,155,157,586,601,274,603,60,36,255] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [5729,5949,5950,6879,6881,5709,5711,5718,5721,5724,5730,5703,6861,6892] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [520,521,1130,1115,1140,484,487,1157,486,1156,657,662,1112,519,675] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [1201,375,1292,1205,1297,1195,1196,1197,1293,3149,3181,3158,365,367,1295,395,397] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [1456,1439,2202,1844,1888,1886,1452,1453,2201,2211,1853,2210,1438,1440] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [3579,3588,3589,3590,3576,3577,4038,4035,2389,2390,2422,2424,2428,2429,2432] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [5924,5925,6683,6673,6674,6667,6325,6360,6316,5910,5911] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [4835,4839,4840,4847,7589,7645,4799,4812,7614,7623,7646,5765,5767,5769,4824,4829,4832,4811] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [5601,5602,5603,5126,5129,5628,5629,5147,5134,4956,4958,4959,5587,5612,5584] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [5037,5040,7847,7879,7878,7870,7844,7881,7913,7915,5023,5082] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [8484,8009,8053,8054,8055,8487,8042,8007,8010,8044,6889,6887,6856] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [6304,6302,6306,6307,6640,6644,6646,6648,6611,6645,6647,6649,6254,6462,6464,6255,6656,6658,6634] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        