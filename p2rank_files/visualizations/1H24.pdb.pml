
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
        
        load "data/1H24.pdb", protein
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
 
        load "data/1H24.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5115,5118,4537,4543,5134,4594,4540,4541,5089,5090,5093,5094,4712,4713,5088,5098,4696,4595,4853,5607,5608,5611,5612,5615,5513,5614,4956,5534,5606,5135,5535,5506,4883] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [2963,2964,3368,3373,3398,4479,4476,4640,4990,4490,4449,4450,4452,4489,5005,5004,562,3397,3391,564,3394,3395,3396,4978,4979,4987,2954,2958,5082,4677,4982,4676,4981,576,579,561,569,570,575,3364,3366,4471,4467] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [265,116,108,1166,101,1163,1164,641,645,509,405,646,263,644,1160,1159,1158,1086,1087,698,1058,701,147,146,89,92,95,145,687,694,91,93,650,248,670,678,261,642] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [7845,7846,7821,31,556,1,2,4,557,41,42,7411,7412,192,242,228,555,539,542,530,531,7842,7843,7853,7402] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [7933,7934,7263,7265,7269,8113,8115,7272,8785,8787,7969,7967,7968,5699,5701,5703,8090,8094,8773,7964,7966,7998,8000,8088,8087,8082,8083,8084,8089,5684,7273,7277] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [1255,2815,2812,1251,1252,1253,2817,3125,3126,1209,1273,1275,3519,3520,3521,1239,1236,1238,3485,3486,3667,2821,3666,2831,2833,3495,2829,2830,3491,3492,3493,3488,1223,3494,1222,3646,3639,3636,3641] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [1145,2348,2349,1115,1116,1128,1103,516,651,654,7065,7066,229,7418,481,483,484,494,7046,659,1100] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [3790,3834,3760,3761,3762,3776,3711,3713,3710,3812,3813,2856,2853,2852,3721,3715,3717,3461,3466,3469,3478,2527,2883,2886,2879,2880,2914,2544,2545,2535] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [5699,5721,5723,5701,5703,5661,5662,5670,5671,7934,7940,7969,7936,7967,7968,5684,7573,7574,7941,7278,7280,7277] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [5107,5122,5548,2617,2618,2619,5566,2597,2598,2596,2599,2601,5099,5102,4929,4931,4932,5592,5593,6797,5551,5576] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [2190,2191,1875,1876,1832,1835,2189,2198,2183,1433,1444,1440,1441,1450,1427,1423,1883,1841,1848,1846,1847,1867,1874] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [6645,6646,6647,6289,5875,6323,5888,5889,5885,6637,5840,6638,6639,5837,6283,6324,6280] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [8238,8209,7926,8261,8282,8208,8210,7909,8260,7334,8224,8163,8169,8158,8159,7322,7325,7362,7914,7331,7919,7917,7300,7327,7328,7920] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [5694,5913,5914,5899,5898,5887,5888,5889,6646,6839,6813,6814,6816,6817,6826,5693,5668,6881,6853,6855,6856,5682,5685,5688,8009,5680,5673] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [2406,2408,2376,2377,3560,4019,2417,3571,3558,3569] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [5184,5543,5568,6807,6810,5547,6808,5186,5309,5553,5131,5132] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [264,265,111,116,108,1166,117,1165,404,1179,122,282,115,118,124,280,130,370,374,371,372] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [2162,2163,2164,1823,2172,1978,2156,2160,2161,2127,2150,2165,1980,1770,2129,1979] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [7001,7002,7051,7049,7050,7396,7400,7402,7401,7047,7046,468,469,517,518,467] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [1099,2360,683,684,1095,736,734,693,861,827,738] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        