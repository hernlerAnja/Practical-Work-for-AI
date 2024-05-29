
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
        
        load "data/4EOM.pdb", protein
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
 
        load "data/4EOM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4764,4765,4904,5145,5654,5659,5660,5581,5653,5565,5658,5582,5553,4616,5674,5661,4601,5008,5189,5196,5557,5170,5178,4868,4870,4871,4873,4646,4647,4748,4589,4590,4592,4593,4608,4595,4598,5150,5167,5162,5164,4782,4762,4763,4780,4611,4614,5140,5141,5142,5144] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [93,99,150,151,94,95,634,631,632,500,97,252,267,637,633,635,1072,1073,661,687,674,669,680,713,96,655,1056,1150,1152,1044,1145,1149,499,1144,269,268,112,115,636] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [7710,46,196,7290,246,1,2,232,530,521,522,625,524,525,532,531,533,7742,7280,7289,7729,7730,7736] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [3554,3672,1229,4384,2862,1238,1239,1241,2848,3157,3159,2863,2866,3518,3519,3525,3553,1200,1209,1199,1208,1222,1237,1259,1261,3158,2850,2854,2855,2857,2858,4372,3699,3700,4358,3679] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1435,1436,1446,1447,1457,1461,1462,1468,1386,1206,2466,2415,2439,2441,1469,1470,1471,2227,2232,2233,2191,2192,2216,1474,2193,2194,2427,2236,2416,2417,2419,1232,1211,1204,1226,1495,2201,2202,2203,2197,2199,2411,2440,2410,1437,1220,1223] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [645,1131,1114,1130,1089,1086,650,2353,1101,1102,507,508,509,233,642,7296,6943,6944,472,474,475,485,464,6924,6925,6926] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [3511,3840,3845,3846,3867,2571,3823,3505,2564,2578,2919,3806,3794,3746,2947,3748,3809,3793,3795,3743,3744,3747,2577,3494,2913,2885,2912,2916,2886,3754,2889,3499] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [6496,6698,6703,6704,6732,6734,6485,6486,6487,5729,5732,5727,5735,5715,5716,5740,5961,5741,6759,5967,5968,5960] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5031,2996,4728,5134,2987,4495,5030,5039,5042,4542,4498,4692,2997] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [5731,7141,5746,5748,7150,7822,7823,8003,8004,8674,8676,7856,7858,7887,7889,7973,7976,5733,7971,7972,7983,8662,7147] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [8127,8149,8150,8171,8098,7178,7182,7803,7809,8052,7815,8050,8058,8097,8099,8048,7798,7808,6871,8113,7212,7205,7206,7209,7240,7203,6861,8110] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5598,5613,5610,5623,4981,4983,5154,5640,5173,5639,4984,4994,6647,2650,5159,2631] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [2195,2203,1423,1836,1845,1880,1851,1852,1879,1878,1437,1850,1436,1446,1386,2193,2194] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [5731,5747,7823,5718,7857,7858,5717,5708,5742,5768,5770,7829,7830,7155,7156,7157,7158,7452,5750,5709] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [3563,4052,3558,3559,4048,4049,3601,3602,3603,3604,2438,3590,3591,3593,2436,1217] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [8755,8757,8240,8480,8447,8209,8211,8218,8393,8476,8477,8478,8445,8455] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [453,6879,6880,6927,6928,6929,7274,6925,7278,7280,507,508,509,449,459,461] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [7905,7907,7908,8355,8356,7895,7897,6741,6740,8353,6729,6731,7864,7866,5726,7863] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        