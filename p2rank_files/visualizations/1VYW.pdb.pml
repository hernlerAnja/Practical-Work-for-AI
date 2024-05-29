
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
        
        load "data/1VYW.pdb", protein
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
 
        load "data/1VYW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [116,119,1087,113,664,117,272,674,687,725,1082,751,691,1110,1111,694,710,711,718,665,666,667,668,669,533,532,1182,289,1183,1094,1184,1190,285,152,288,171,151,125,170] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [5180,4607,4608,5216,4604,4609,4610,4660,4661,4662,4643,5023,5155,5156,5157,5158,5159,5160,5161,5673,4763,4780,5674,5678,5679,5680,5580,5585,5681,5573,5601,5602,5201,5213,5185,5193] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [3027,4743,5045,5046,5054,5055,5149,3028,4707,3437,5057,3461,3462,4521,4517,4546,3018,4557,4556,4543] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [7496,566,7497,216,563,658,66,7906,30,7931,55,65,554,52,7487,7491,555,252,253] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [1238,3585,3594,3593,3624,1262,2437,2440,2441,2442,2429,2218,1239,1242,1244,1493,1472,1482,1485,1024,1487,2497,1486,2208,2213,1492,1257,1263,1258,3625] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [3583,3584,3580,3616,3614,3698,3699,3700,3702,3703,3705,3706,3710,3677,3611,3704,4403,3550,3730,2881,2885,2886,2887,2888,3729,3731,4401,4389,1256,1255,1263,2889,2893,2879,3585,1262,2876] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [5729,8062,8063,6939,5753,5748,5749,5752,5754,8093,5730,5733,5735,5973,5978,5515,5963,5755,5976,5977,5731,6966,6920,6924,5984,5983,5985,6932,6933,6936] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [1094,1188,1189,1190,1052,1330,1054,1071,1203,1204,1206,1211,1212,1213,1053,1070,1087,149,151,152,394,396] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [7447,8309,8345,8323,7410,8294,8346,7416,7419,7412,7413,7994,7385,7999,8002,7388,8254,8367,8011,8244,8246,7060,7077,7078] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [8085,8198,8172,8872,8874,8083,7350,7354,7348,7355,7356,7357,8200,8054,5746,8019,5754,8053] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [590,591,3388,3425,3427,3389,3391,3359,367,321,322,324,332,602,609] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [5166,5168,5169,5170,5660,5187,5188,5618,5615,5633,5174,4998,5659,5643,6860,5031,4996,4999,2662] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [675,678,1168,1169,683,696,1127,1139,1152,1140,1142,2369,542,541,507,508] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [3785,3779,3876,3898,3530,3536,3542,3825,3835,3854,3775,3777,2978,3840,2941,2737,3781,2947,2943,2944] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [1896,1852,1894,1895,1486,2210,1410,1412,1460,1443,1446,1448,1409,1903,1485,2219,1861,1866,1867,1868] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [298,624,35,60,59,83,34,84,642,643] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [6343,6385,6387,6381,6394,6352,6357,5976,5977,6701,5937,5951,5903,5900,5901,5939,5943,5948,5934,6709,6710,6694,6702,6341] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [3460,4514,4520,4546,585,3428,3430,3425,3426,3427,3429,3398,3461,3462,4519,4521,600,3437,3396,3432,3397,3401,4537] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [5679,5680,5681,4885,4886,4887,5694,5695,5704,4780,4919,4779,4797,5142,4889,4892,4637,4638,4640] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [4526,5132,5134,4551,4770,4528,4525,4550,4574,4575] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [7856,7857,7863,4861,5081,7888,7894,7896,4826,4831,4858,4815,5093] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        