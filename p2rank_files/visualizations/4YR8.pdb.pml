
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
        
        load "data/4YR8.pdb", protein
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
 
        load "data/4YR8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7553,7554,7560,7555,7556,7557,7558,8138,8600,8524,8601,8143,8140,8500,8507,8598,7682,7683,8121,8597,8122,7667,7575,7576,7577,8157,8158,8161,8165] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5313,7247,7248,7249,4995,6978,6970,6972,6974,5312,5314,5338,5066,6973,5030,4978,5028,5029,4979,7261,7264,6720,5056,5057,6722,6702,6704,6706,5059] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [5394,5400,5403,5401,5392,5393,10851,5402,5636,5638,5639,5675,10822,10823,10825,5669,5670,5671,5634,5635,5637,5683,5368,5263,10887,10888,10889,5241,5242,5243,5244,5267,5679,5680,5677,5701,10860,10862,10854,10855,10794,10777,10820,10818,10821] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [7200,7201,8886,8887,9043,9044,9045,9320,9322,9326,7159,7161,7167,7170,7172,7106,7132,7133,7134,7163,7166,9312,9313,9279,9281,9013,9035,9037,9033,9034,9280,9282,9036,7174,8884,7089,9366,9008,9011] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [3420,3393,12925,12642,12645,12486,12643,12644,12912,12917,3376,3459,12483,12484,12485,12921,12943,3486,3487,3488,3417,3419,3446,3444,3445,3454,12879,12876,12877,12880,12881,3421,3422,3450,12635,12610] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [1398,1649,1650,3535,3536,1648,1331,3007,3009,3548,1393,3551,3265,2991,2992,2993,3534,3259,2989,1392,1395,1312,1311,1364,1365,1366,1397,1402] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [2424,2426,1050,2339,2341,2342,1051,1052,2407,997,999,1031,2423,2422,2338,2419,577,585,586,1027,1030,1049,1048,1060,575,1029,1057] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [11366,11732,11720,11734,11750,11751,11752,11755,11759,12118,11737,11382,11383,12191,12192,12194,12195,11716,12094,11760,11272,11273,11274,11275,11276,11278,11299,11381,11297,11298] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [1266,1268,1269,1168,1192,806,808,810,811,833,836,858,829,812,826,827,1191,824,825,212,214,233,234,211,213,216,332,348,789,790,220,235,217] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [14391,14364,14398,14399,1736,1737,1738,1739,1973,2019,1970,1972,1974,1975,2011,14366,14338,1971,1580,2015,1579,14404,14406,2005,2006,2013,2037,14393,14395,1728,1729,1730,1702,1704,1599,14432,14433] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [4503,4835,4859,4933,4935,4936,4858,4860,4492,4493,4494,4496,4500,4491,4014,3887,3902,3882,3883,3900,3901,3874,3875,3877,3879,3880,3881,4277,4461,4468,4473,4475,4477,4478,4479,4456,3999,4457,4932,4015,4016,4485] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [4252,4253,6131,6127,6090,6092,6094,6075,6086,6087,4242,6009,6010,6007,4662,6052,4664,4666,6006,6058,4696,4697,4244,4698,4717,4718,4719,4720,4716] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [1839,1840,1841,1846,1847,1848,3012,3014,3032,3033,3034,1855,3003,3569,3599,3050,1880,3624,3625,3626,6696,6698,6737,6738,6742,6680,6544,6697,6779] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [12555,14204,14479,13937,13938,14210,14211,14480,14481,12237,12554,12556,12299,12304,12306,12308,12580,12301,13954,13955,14493,12233,12270,12271,12272] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [1837,1839,1840,1841,6768,6769,3012,3015,3016,6782,6809,6743,6744,3003,3004,1416,1418,6742,6779,6780,6680] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [4985,4986,4984,5005,5007,5259,5018,5020,4836,4837,4822,4516,4517,4829,4830,5219,4548,4515] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [6881,9359,6315,9356,9371,9348,9418,9419,9420,9421,9386,9389,9390,6899,6898,6325,6858,6879,6878,6874,6875,6876,6877] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [6961,6973,6953,6948,6978,6970,6972,6974,6703,6704,6706,6987,6988] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [6746,6747,1820,1821,1822,1823,5510,6763,7312,5519,7339,7337,7338,7377,5544] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [10390,10394,10952,10949,8700,10410,10411,8673,8671,8702,8638,10660,8956,10935,8957,8705,8709,8634] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [12518,12520,12508,12924,13131,12653] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [8222,8223,8197,8274,8276,8198,8532,8536,8545,8561,8560] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [11868,11870,12126,12139,12155,11905,11791,11792,11834,11816,11817] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [2990,3274,3275,3265,2991,2993,3240,3243,3248,3257,3259,3260,3261] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [8909,9547,9054,8921,9325,9045] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [1612,2018,2015,2016,1747,1602,2236,2029,2030,1738,2019] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        