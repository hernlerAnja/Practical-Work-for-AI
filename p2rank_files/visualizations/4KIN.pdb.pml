
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
        
        load "data/4KIN.pdb", protein
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
 
        load "data/4KIN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3302,4057,3947,3268,3110,3111,4058,4050,3597,3600,4049,3590,3591,3593,3970,3556,3557,3561,4047,4051,4052,3303,3380,4062,3001,3574,2951,2954,3000,3002,2962,2966,3107,3540,3095,3571,3588] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [1315,275,380,829,1227,1306,368,834,844,812,830,367,273,274,376,227,847,1308,1309,1324,1326,1304,1314,652,653,1305,1307,574,575,576,1204,1205,235,870,873,866,859,860,861,863,864,1337,384,541,538,383,239,1319,1336,1338] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [9512,9514,9516,9517,9522,9435,9515,9036,9527,8466,8467,8431,8433,8443,8442,9039,9050,9058,9062,9432,9055,9056,8447,8449,8444,8446,8448,9051,9052,9053,8572,9004,8574,8575,8576,8733,8766,8767,8768,8845,9532,9533,9534,8728,8730,8757,8759,9022,8844,8560,9026,9021,8568] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [6786,6788,6789,6709,6300,6310,5705,6796,6797,5706,6041,6279,5848,5849,5850,6007,6278,6295,6296,6686,6336,6339,6327,6328,6329,6330,6790,6791,6801,6819,6808,6042,6119,6807,6040,5698,5700,6313,5699,6326,6325,5739,5704,5741,5842,5740,5846,5832,5833,5834] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [1116,1120,1121,1122,2462,2468,2451,2465,2466,10254,2447,10016,10015,9885,9895,9892,9990,9992,9905,9989,10027,10293,10303,10025,10026,10028,9993,9879,9913,9914,9864,9865,9866,10291,9875,9877,2471,1128] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [9911,9912,9913,9925,9959,1106,1107,1114,1540,1075,1077,1079,1117,2446,1081,1082,2282,2280,2281,2292,1548,1109,1537,2277,2283,2288,1530,1533,1531] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [9028,9029,9030,9031,9032,9499,8816,8820,8848,8849,8851,9498,8866,8805,8808,8797,8798,10917,10918,10930,10923,8801,8804,8854,9481,9047] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [4242,4553,4972,4974,4726,4728,4220,4973,4596,4519,4520,4186] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [875,877,879,880,936,969,970,937,1004,1646,1234,1265,1238,1246,869,1244,1245] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [655,656,2713,2712,643,616,1289,1290,1291,623,624,606,608,613,605,609,674,839,840] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [8830,9479,8831,9265,9266,9267,10625,10580,10583,9205,9203,9231,9232,9241,9239,8822,10629] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [2050,5214,5215,2088,2089,1674,2086,2049,1820,1822,1690,1784,1687] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [8149,8144,8165,6147,6152,8146,5493,5494,5512,6160,6148,5644] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [3365,3767,3800,3801,3802,3766,3774,5124,5127,5173,3357,3366,3738,3740,3776] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [9649,9698,9694,9695,10078,10437,10101,10426,10439,10079,10428,10429,10443,10444,10452,10450,10451,9711,10100,9692] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [3340,3370,3383,3342,3343,4034,4033,3382,3326,3332,3386,3384,3564,3566,3389,5461,5462,3401] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [638,1059,2424,639,627,628,1271,2378,2380,1023,995,1031,997,1033,2373,2375] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [6105,6539,6477,6513,7859,6505,7845,7857,7854,6096,6104,6540,6541,6479] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [3987,3989,3628,3630,3632,3981,3712,3713,4008,3977,4004] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [9285,9315,9317,10497,9742,9745,10482,10485,10487,10488,10486] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [7567,7528,7568,7565,7169,7301,7299,7177,7263,7295,7529,7166] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        