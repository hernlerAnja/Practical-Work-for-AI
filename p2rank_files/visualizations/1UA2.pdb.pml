
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
        
        load "data/1UA2.pdb", protein
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
 
        load "data/1UA2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5537,4645,5757,5170,5534,5193,5157,5158,5150,4655,4659,4661,4662,5758,5522,5759,4675,4816,4652,4653,4654,4678,4679,4815,5115,4691,4692,4693,4799,5139,5142,4636,5685,4633,4639,4640,4641,4634,4637,5521,5544,5545,5533,5561,5639,5560,5635,4998,5642,5143,5144,5123,5505,5686,5779,5186] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2523,2524,3343,3344,3349,3350,3351,3253,3348,2399,2400,2401,2823,2507,2344,3241,3269,3268,3340,2858,2865,2850,2847,2852,2851,2831,3213,3252,3347,2387,3366,3393,3394,2821,2822,2706,2353,3244,2370,3230,3242,2340,2341,2348,2342,2349,2345,2877,2360,2363,2372,2367,3467,2894] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [961,231,232,938,949,952,960,1051,1058,976,977,585,412,560,559,574,1057,1059,531,530,529,79,1102,77,71,75,76,80,1098,1097,55,107,108,109,68,61,95,52,552,554,555,558,566,573,215,48,54,49,50,53,82,91,602,951,953,1175,1055,920,921] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [6936,6937,6945,6946,6944,6947,8051,6953,6954,6955,8049,6925,6926,6929,6932,6933,6983,6985,7478,7825,7827,7828,7829,7826,7814,7442,7462,6958,6967,6956,6984,7106,7107,7108,6928,7091,7428,7977,7934,7935,7931,7978,7851,7290,7853,7852,7836,7796,7797,7837,7434,7436,7435,6971,7970,7973] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [6262,6268,6324,6325,6331,6267,6251,6256,6253,6391,6393,6387,6385,6386,6369,6371,6376,6210,6212,6247,6390] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [8799,8797,8798,8801,7594,8349,7560,7571,7572,7575,7576,9081,9036,8832,8805,8823,7593] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [4222,4450,4452,3019,4248,4223,4237,2982,2987,2988,2991,4497,4498,3010,3765,2981,2984,4214,4221,4215] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [1473,1956,2160,2162,2204,2205,2206,727,1922,1929,1946,1947,1948,1930,1923,715,717,718,689,692,695,696,699,726] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [2408,2529,2801,2307,2309,2310,2512,2514,2303,2406,2293,2295,2302,2417,2515,2530,2531,2532,2533,2748,2750,2451,2445,2447] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [1713,1722,1730,1732,1729,2046,2052,2054,2060,2053,1282,1716,1760,1322,1337,1343,1344,1354,1339,1340] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [6056,5275,5280,5302,6540,6531,6532,6789,6790,5311,6513,6744,5299,5310,6746,6506,6514] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [6297,6300,6638,6636,6637,6630,6644,6313,6306,6314,6317,6344,6345,5906,5923,5924,5921] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [7479,7826,7821,8076,8092,8093,7810,8127,8333,7820,8129,7509,7511,8079,8117,7508,8380,8381,8382] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [5672,4863,4897,4898,4900,5100,5101,5669,4862,4864,5707,4833,4834,5085,5031,5034,5043,5044,5086,5032,5029,5030,5050,4865,4866,4870,4872,4899] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [4052,4005,4014,4338,4022,3574,4344,4345,4346,3614,3629,3631,3633,3635,4025,4352] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [7126,7156,7164,7327,7336,7190,7192,7378,7377,7379,7132,7125,7965,7962,7999,7967] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [3492,3499,2895,3749,2892,2893,2925,3509,3531,3533,3798,3797,3494,3543,3545,3245,3244] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [4032,4033,3959,4077,4079,4098,3953,3954,4095,4101,4094,3918] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [944,1456,603,635,1216,1217,1196,1202,1457,1505,1241] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [8198,8213,8219,8636,8589,8922,8605,8609,8604,8606,8928,8929,8230,8215,8216] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [3636,3646,4342,4343,4351,3649,3656,3657,4344] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [5184,5187,5217,5218,5219,5787,5835,5837,6041,5825,6040,5800,6089,5536] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [1356,1358,1364,1365,1355,1343,1344,1345,1354,2050,2055,2052,2060,2051] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        