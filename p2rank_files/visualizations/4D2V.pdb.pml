
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
        
        load "data/4D2V.pdb", protein
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
 
        load "data/4D2V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [215,8452,8834,8449,164,165,198,199,8807,166,8818,8931,8932,8934,8777,8792,8793,8794,8121,8122,8123,8955,8956,364,9016,8440,8441,214,39,41,8469,13,8808,8809,8810,9045,341,9017,9018,632,633,355,356,357,9020,9023,9024,10,14,23,27,28,30,621,622,623,624,9327,11,9296,9036,9028,9032,9368,9322,8833,8267,8405,8400,8923,8925,8926,8023,8927,8024,8025,8157,8158,8933,8133,8118,8119,8947,8432,8433,8430,8429,8431,8425,8426,8427,8423,8000,8008,8401,8417,8419,196,197,171,174,172,144,147,321,339,340,338,324,213,325,159,7913,7914,8022,163,7893,8096,8097,7862,7861,7863,7929,7930] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5354,5371,5191,5193,5480,5481,3644,3641,3301,3303,3642,3643,3634,3635,4065,5169,3868,3626,3627,3628,3871,3893,3880,3895,5494,5495,5496,5334,5477,5779,5780,5179,5175,5166,5170,4109,4110,5167,5180,5181,5182,5770,4181,3884,4135,4140,3864,3865,3866,3872,5497,5321,3286,5320,5322,5355,3757,3666,3667,3759,3760,3283,5303,3260,3274,3275,2842,3234,3239,2764,3251,3253,3257,3259,3261,3263,3264,3101,2929,2953,2955,5328,5330,2956,2957,3611,3652,3761,3765,3766,3767,3768,3651,2856,2857,2967,2858,2859,2951,2952,2991,2992,5323,5324,5316,2746,2747,2748,2693,5300,5312,5304,5310,2695,2696,2697,2726,2727,5327,5329] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [6230,6231,3193,2740,6221,6222,6227,6228,5873,5888,6352,2706,2707,2708,6226,6239,6344,6347,6346,6348,6341,2863,2866,2737,2738,2714,2716,5346,2701,2703,2705,2710,2711,2712,5362,6431,5861,5862,5863,2686,5361,5846,5847,5850,5851,5852,5853,5854,5378,5844,5308,5310,5311,5379,6254,6255,5848,6404,6408,6402,6213,6214,6215,6407,6427,6412,6416,6429,2882,2900,2906,2907,2720,2880,2883,3192,2904,5542,5543,5544,6378,6353,6354,6355,2723,5520,2715,2717,5339,5341,6377,6198,2575,2577,5890,5892,5927,6662,6669,6671,6673,6661,2568,6681,2565,6679,6680,6707,6634,6636,5919,5916,5947,3181,3182,3183,3184,6706,6752,2567,6711,6420,5821,5822,5456,5826,5688,5686,5838,5340,5473,5578,5471,5472,5579,5609,5554] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1093,7907,7874,1092,1104,1063,1078,1079,1080,8049,8072,1252,1253,1255,743,1096,7745,7923,792,7741,7743,741,1094,1095,8358,8359,8047,8048,1258,8065,1259,8347,8348,8349,8350,1263,1577,784,1086,1087,1459,1460,1461,1280,1504,1506,1505,1267,1271,7906,7871,7886,8029,7879,7880,7882,8046,8073,8032,8042,7922,315,316,1212,1220,317,431,1217,1219,1233,373,393,394,395,396,1242,190,183,184,185,366,392,407,369,401,1531,1532,7728,7731,7734,1536,7779,7739,1487,1489,1492] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [703,691,699,701,300,679,697,1119,541,1211,315,316,1209,1212,432,317,1217,693,1213,152,154,155,222,151,205,206,314,674,672,675,539,461,715,716,718,723,1120,7873,7872,7874,706,707,704,705,700,714,7855,7864,7866,7868,7871,7852,7857] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2459,2426,2081,2082,2083,2451,2427,2430,2454,547,550,2487,2456,2458,2482,2449,2450,281,284,276,569,2438,546,567,2488,2490,2491,279,1139,1156,1176,1158,1159,681,682,684,1196,1145,1148,689,688,512,513] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [5835,5836,5828,5829,5830,5831,6331,5440,6283,7666,5660,5441,5714,5716,7256,7257,7258,7634,7625,7630,7631,5435,7633,7613,5437,5693,5694,5697,7624,7605,7601,7626,7629,6290,6274,6280,6289,6311,6291,6293,6294] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3744,3241,3106,3243,3244,3072,3070,3073,3693,3687,3704,3706,3723,3724,3248,3245,3249,3696,3107,3110,3127,4692,5037,5036,5069,5040,5061,5062,5064,4691,4693,4680,5066,5068,5092,5100,5098,3129,2826,5048,2818,2822] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [8870,8872,8410,10241,10242,10239,10240,10233,10210,8228,8407,8408,8409,8227,8236,8239,8293,8295,8272,8273,8276,8219,8220,9861,8411,7992,8238,8910,8853,8414,10177,10178,10189,10205,10202,10181,10207,10200,10206] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [6476,6477,6478,6481,6482,6483,8891,8892,8893,8643,8644,8252,8253,8642,8665,8666,8240,8243,9827,9823,9818,9820,8645,8629,8604,8628,8630,8633] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2208,2210,2381,2408,2409,2390,2219,2220,2221,2384,2385,2388] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [6992,6993,7001,7000,6983,6987,6988,6991,6451,6454,6447,6491,9798,9799,9801,9803,9804,6479,9777,9788,9789,6790,6985] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [6312,6314,7211,6050,6087,7204,7207,7208,5672,5673,5674,6063,6064,6065,6066,6051,5661,5664,7248,7250] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [514,517,526,527,2036,2029,2032,2075,952,2073,1179,928,929,924,915,1177,930] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [6740,8882,8884,8614,8645,8606,6760,6733,6736,6734,6737,8878] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [8400,8923,8925,8158,8186,8188,8401] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        