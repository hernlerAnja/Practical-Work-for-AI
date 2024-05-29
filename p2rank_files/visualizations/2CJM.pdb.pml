
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
        
        load "data/2CJM.pdb", protein
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
 
        load "data/2CJM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5457,5462,4488,4489,4496,5422,5558,5450,5042,5059,5478,5550,5062,5479,5078,5086,5093,5033,5034,5036,5037,5038,4655,4656,4657,4796,5032,4506,4499,4504,4513,4515,4900,5551,5552,5557,4519,4763,5571,5555,5556,4538,4640,4525,4539,4477,4483,4481,4654,4510,4661,4674] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [144,95,83,85,86,89,92,87,599,600,602,466,467,609,1045,246,621,261,262,145,102,105,94,101,601,603,604,605,1046,660,629,626,1114,1117,1118,1122,1123,1029,1125,1017,110,263,1124] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [3341,4947,4948,3343,3345,3350,3318,3339,3344,4922,4931,4932,4934,2909,4418,4419,4429,4430,4584,4949,4395,2899,2908,4923,4926,5026,4620] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [25,17,1,36,190,226,500,505,516,510,515,498,501,489,490,7805,7807,7808,7809,7816,7784,7374,7375] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [3430,3431,3610,3611,3612,3495,3497,1212,2760,2762,2766,4275,1211,3466,3461,3465,3584,1195,1197,3581,4296,3591,4270,3583,3585,1214,2754,2774,1182,2767,2769,4274,4282,4284,4272] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [3658,2797,2801,3666,2824,2825,2828,2859,2489,2490,3706,3735,3779,3705,3715,3716,3721,3656,2618,3662,2483,3718,2831,3423,3752,3757,3758,3406,3411,3417,2472,2480] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [7961,8050,7963,8076,8045,8046,8047,8052,8053,8748,8057,8736,8738,7930,7932,5630,5631,7893,7897,7899,7903,7931,5645,8078,7232,7235,7896,8077,7226,8741,8750,5644,5647,5643,5615,7240] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [2157,2158,2147,2154,2156,2148,2317,2323,2324,2330,1193,2350,2352,2353,1196,1205,1398,1399,1400,1184,1420,1424,1425,1432,1409,1410,1191,1179,1431,1433,1437,2332,2328,2329,2331] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [1104,1087,613,1062,1075,618,642,2308,473,475,612,614,227,610,440,443,452,442,453,432,457,848,7012,7009,7028,7029,7030,7381,7014] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [5865,5853,5857,5858,5864,5870,5842,5832,6589,6590,6591,6580,6581,6585,6587,6794,6795,6797,6790,5623,6819,5626,6783,6818,5632,5638,5624,5612,6844,5637] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [5510,6741,6740,5537,4875,5495,5520,5043,5045,5046,5051,5536,5492,5509,5511,5075,2543,2541,2544,2546,2548,4876,4906,4908,5047,2563,2564,5048,2562,2915,4621] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [7267,8173,8245,8126,8132,7872,7877,7880,7882,8223,8224,8201,8172,7883,7889,6955,7297,7290,7291,7294,7263,7288,7325,8187,7084,8128,6946,6956,6949,6938,6942] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [331,116,119,110,263,330,363,1124,1125,262,145,112,128,102,105,101] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [1835,1791,1800,2149,2150,1834,1806,2157,2158,2148,1833,1399,1400,1394,1395,1805,1409] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [2778,3437,3438,3439,3440,2774,2775,1214,3070,3071,1172,1173,1182,1168,1181,942,3061,1169,3431,1212,3466,3465,1195,1211] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5828,6227,6224,6268,6267,6233,6238,6239,6240,6591,6581,6575,6582,6583,5832,5818,5833] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [305,311,3300,3268,3269,3270,301,302,303,304,3272,3307,3306,3309,3311,543,553,564,551,552,284] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [4399,4400,5009,5011,4666,4992,4445,4447,4448,4548,4550] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [4757,4758,4762,4759,4784,4786,4521,5573,5575,5581,7573,5672,5693,5697,5677,5576,5673,5675,7550] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [7364,7365,7376,7381,7011,7012,7010,7009,427,428,477,7013,7014,473,475,612,614,493,613,432,6965,7359] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [4104,4105,3682,4100,4102,4163,4165,4130,3680,3681,3691,3702,4134,4132] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        