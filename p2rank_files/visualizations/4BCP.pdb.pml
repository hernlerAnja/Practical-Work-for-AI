
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
        
        load "data/4BCP.pdb", protein
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
 
        load "data/4BCP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4715,4583,4612,4613,4614,4582,4585,4590,4591,5124,5136,5141,5138,5144,4579,5201,5115,5118,4728,4731,4732,5117,5119,5120,5114,5116,4976,5560,5168,5632,5539,5561,5175,5532,4975,5633,5634,5637,5638,5640] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [99,92,145,88,91,94,97,146,641,640,649,642,644,247,700,669,676,677,684,685,686,726,666,1085,663,643,264,404,645,1158,1162,1163,100,107,1069,1165,507,1064,1157,1057,697,1086,262,263] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [3001,3448,3006,3007,3440,3441,5009,5024,3439,3416,4521,4495,4496,4997,4998,5006,2997,4659,4531,4532,5108,3008,4695,4696,5001] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [4,40,7651,7242,41,30,27,191,227,241,538,541,529,530,532,633,1,7674,7683,7241,7672] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [6684,6650,6685,6686,5693,6656,5708,5719,5940,5720,6665,6669,6657,5939,5946,5947,5948,5952,6448,6449,6458,6447,6453,6455,6492,6661,6672,5695] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [1144,1127,1143,653,658,1099,1100,1102,2348,1114,1115,650,6897,6895,6896,682,228,7248,482,483,6874,6876] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [345,351,342,343,297,299,3407,319,295,296,301,3367,3370,3368,3379,3437,3439,4521,3403,3404,3405,3406,3375,3373,564,566,4495,4496,4511,4513,565,4512,583,584,589,4520,3380] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [5589,5590,6609,5618,5619,5574,5577,5602,4948,4950,4951,5133,5157,5128,2660,2661,2641] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [3595,3709,3710,3679,3684,3689,3593,3682,1237,3658,4394,3528,3529,2860,2864,2868,2858,1252,1235,1242,1250,1251,3562,3563,3564,4382,2867] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [6809,6822,6823,7164,8055,8038,8039,8051,8068,7739,7158,7161,7155,7192,7130,7999,6951,7989,7995,6813,8090,8091,8112,7756,7991,7134,7744] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [7797,5726,5727,7799,7945,8608,7093,7102,7944,8615,8617,7828,7830,7916,7917,7918,7893,7914,7924,8603] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [1875,1845,1846,1847,1829,1831,1840,2182,2198,1873,1874,1426,1439,1440,1449,2188,2189,2190,1389,1834] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [2587,2588,2957,3877,3756,3820,3753,3754,3804,3833,2922,2923,2926,2895,2898,3764,3850,3855,3856,3521,3504,3515,2570,2574,2578,2929,3509,2896] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [2192,1477,2186,2187,2188,2419,2413,2414,1464,1465,1245,2430,1471,1472,1473,2197] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [1222,1235,1250,3531,3563,3564,3529,2872,1252,1254,3535,3536,3537,3538,1209,1212,1213,1221,3169,1208,1274,2873,2874,2876,3168] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [7109,7770,7771,7772,7108,7107,7764,7404,5729,7766,7798,5726,5727,7799,5747,5749,5683,5687,5688,5696,5697,5710,7403] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [3434,3437,3438,3439,3403,3406,3408,564,557,561,545,3472,547] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [21,7614,5054,5,7675,7676,7612,7639,7640,7641,7642,7643,7644,5044,5049,5050,5045,5052] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [10,11,272,618,58,59,273,573,617,599] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [6831,6832,465,6879,6881,7226,6877,6876,7230,7231,7232,515,517,466,468] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [7002,7515,7345,7346,7011,7033,7034] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        