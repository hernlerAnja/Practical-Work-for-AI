
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
        
        load "data/3CST.pdb", protein
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
 
        load "data/3CST.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3698,3700,3701,4510,4511,475,474,476,976,992,993,995,974,1105,1107,4958,3417,3448,3451,3732,3734,3736,3416,3418,3420,3422,3779,3780,3731,3733,3735,4496,4521,4506,4509,4518,4520,3397,3398,1092,1093,490,1088,1089,1090,1094,1118,1095,1120,1131,1096,3431,3428,3430,505,5045,5046,504,528,1122,4957,4982,4983,5119,4979,4980,4981,5009,5008,5122,5103,1132,1133,1135,1167,5135,5136,5139,5142,4497,5223,4512,5126,4919,4921,4922,1158,1159,1155,1156,5083,5084,5003,5006,5010,5005,5011,5015,5047,1128,1119,546,548,556,5073] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5873,5874,5875,4851,4622,4623,4689,4651,4872,4873,4649,5866,5864,5867,5872,5786,5235,5787,5273,5262,5268,5259,5296,5771,5759,5763,4620,4607,4633,4634,4639,4641,4643,5128,5129,5131,5213,5218,5238,5225,5230,5232,5214,5229,4828,4829,4830] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [4515,4516,4517,4518,4520,985,4474,4475,4476,4048,984,4537,983,986,3720,3722,3686,4059,3692,1293,1256,1285,4021,4022,3688,3690,4038,4045,4047,4540,4014,4011,454,455,456,437,946,1006,3693,3694] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [6323,6411,2657,6410,6444,6445,6324,6355,6412,2646,2652,2661,2673,2677,6290,2647,3231,1632,3225,3236,3237,3238,3239,1623,3235,2917,3248,3250,2881,2678,2679,2916,3197,6299,3200,2890,2891] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [5713,5879,5894,5897,5899,6435,6436,6437,6438,5698,5704,5706,6460,6461,6434,6348,6340,6316,6318,6347,4941,4939,4905,4908,6375,6374,6372,6373] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [2282,2292,2293,2294,2295,3831,3860,3862,3863,2281,2037,2301,3835,4898,2251,2252,2259,6377,6390,2247,2254,2240,4881,5176,6352,6370,6371,6376,6378,6379,6383,6384,6359,6360,6367,3838,3841,3842,3813,3848,3513] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [3157,503,504,5054,3146,3373,3404,3405,3406,3440,3442,3427,505,3150,6273,3163,3165,3159,3166,5016,5024,6274,5017,5018,5013,5014,5015,6249,6251] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [2069,236,2067,2151,2101,2323,2324,2325,2063,3562,233,2327,191,2336,197,200,201,220,203,219,2337,208,209,210,211,212,2331,3891,3892,3893,244,2068] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [5223,4512,4501,4530,4810,4805,4809,5221,5222,5220,4815,5227,4796,4800,976,4510,4511,4496,4509,4531] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [5309,5375,5376,5319,6761,6781,6782,5361,5357,5358,5364,5365,5284,5286,5287,5322,5746,5747] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [4770,1180,1184,4773,1136,956,961,962,4766,1201,1202,975,1106,966,967,4531,965,4762,1204] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [1915,3029,3031,3027,2484,3264,1909,1912,2999,2997,2998,2974,2483,1903,1921,2125,1919] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [5082,542,5586,5081,5083,5085,5099,1154,5612,5613,5617,5574,5614,5616,5583] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [4530,4732,4791,4809,4811,4774,4778,4777,4796,4800,961,4766,976,975,966,967,4531,4733,965,4765,4762] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [478,481,482,483,3383,3378,470,3683,3387,3390,460,3668,462,463,465] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [2273,2303,2304,1972,1973,2312,2299,1608,1609,1647,1956,1629] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [4650,4652,4865,4859,4863,4205,4204,4239,4861,5184,5186] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [2245,2015,2026,2014,1478,1483,1485,1486,1740,1739,1999,1467,1501,1502,1503] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [671,674,688,689,691,963,4757,1219,1221,4755,4758,4760,4756] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [5675,5855,5647,5649,5714,5885,5854,5856,4973,4974] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [5676,5653,5949,5838,5858,5859,5643,5644,5992] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [2855,2856,2857,2858,2859,3174,3157,3158,3156,3170,3171,6267,6244,6236,6260,6264,6265,6268,6272] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        