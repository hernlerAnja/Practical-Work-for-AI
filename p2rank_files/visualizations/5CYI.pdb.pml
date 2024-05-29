
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
        
        load "data/5CYI.pdb", protein
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
 
        load "data/5CYI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [147,107,1094,708,701,89,92,93,94,95,96,145,146,693,653,650,652,648,651,248,647,657,263,515,674,676,677,1093,671,405,513,1165,265,1166,1077,1170,1171,1173,1065,108] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [1,2,4,7914,7915,7916,7917,6,549,7881,7882,31,22,23,540,7473,42,192,7482,7483,7892,228,41,229,5070,5071,5072,5069,7884,5079,5078,5083,537,546,547,538,541,7924,7887,7913,7880,7883,7885,7886,5073] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [5148,5158,4646,5594,4606,4607,4597,4599,4600,5175,5178,5177,5193,4591,5194,4588,4594,4595,4764,4913,5153,5154,5149,5151,4592,4644,4645,4747,5170,5667,5668,5566,5573,5595,5666,5671,5672,5674,5578,5209] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [3449,3015,3424,4691,4527,4530,5050,4503,4539,4540,4541,4500,4501,5064,3445,3446,3447,3448,569,570,571,573,4505,3456,3014,3410,3418,3419,4518,4520,4521,4522,587,576,577,578,582,3413,3415,3417,3412,583,568,5048,5038,5039,5047,5142,3005,4727] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [1152,1135,658,661,1110,2356,1122,523,1123,1125,7136,229,233,7117,7488,7489,7137,481,483,484,494,1107,663,666,679,690,691,7118,7119,7115] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [6924,5973,5974,6926,5753,5754,5969,6707,6902,6910,6913,5740,5742,5745,6927,5748,6952,5728,5729,5981,5980,5982,5986,6696,6697,6700,6701] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [5159,5162,5163,5164,5167,5192,5608,5024,3020,3021,4728,4732,2647,2649,2650,2651,2669,2668,5624,5625,5626,4992,6857,4989,4991,5653,5636,5623,5611] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [8039,8069,8158,8185,8071,8132,8155,8165,8844,8870,8133,5751,5746,5744,5759,5760,5761,8004,8005,7334,8848,7341,7343,8186,8856,8858,7340,7336] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [3841,3824,3827,3811,3812,2965,3863,3858,3864,3885,3813,3761,3762,3764,3529,2596,2595,2578,2907,3766,3772,3768,3517,3523,2903,2934,2937,2931,2928,2930,3512] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [3562,3603,3687,3716,3717,3718,3692,3697,3566,3571,3601,3690,1260,2866,1243,1258,1259,2872,2868,2876,3533,3536,3537,3572] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [8280,8295,8279,8289,7192,7396,7433,8234,8236,8353,8240,7375,7997,8232,8229,8230,8281,8331,7398,7399,7402,7405,7980,7990,7985,7988,7991,7371,7050,7054,7064,8332,8309,8292] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [2416,1252,1253,1468,1472,1473,2420,2422,1479,1481,1485,2195,2196,1247,1447,1457,2197,2206,2429,1448,1244] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [6707,6349,6356,6354,5949,5948,5958,5935,5969,6382,6355,6343,6340,6699,6697,6698,6384,5897] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [1260,1262,2880,2881,3177,1230,1220,1229,1243,1259,3176,1216,1217,2884,2882,3537,3539,3543,1221,3572,3571] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [1433,1434,1881,1883,1839,1848,2206,1448,1435,1439,1444,1447,1457,2197,2198,2196] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5731,5760,5761,8005,5721,5722,5730,5755,5781,5783,5744,8039,8040,7645,5763,7348,7349,7350,8011] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [7071,7072,7073,7467,7122,7118,7119,524,523,525,7117,468,469] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [4066,2466,2468,4070,3619,3620,3622,3621,3576,3611,3608,3609,2454,2457,2426] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [4510,4511,5125,5127,5108,4559,4557,4558,4773] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [607,59,60,274,273,11,12,624,626,580] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [7586,7566,7252,7756,7243,7587] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        