
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
        
        load "data/2V5Q.pdb", protein
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
 
        load "data/2V5Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [770,773,774,347,751,1291,1292,1297,358,360,512,187,188,193,244,194,195,196,243,206,207,209,228,229,200,199,189,192,191,616,543,541,839,814,1185,1210,799,804,1207,1208,1209,1211,1212,1288,1295,1296,736] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [2542,2651,2653,2655,2507,3111,3505,3507,3482,2505,3504,3506,3508,2838,2840,3509,3592,3596,3593,2809,3597,3599,3053,3048,2489,2642,2645,2647,3096,3101,3067,3071,3070,3033,2914,2913,3049,2492,2498,2541,2646,2486,2487,3103] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1445,1172,1173,1448,1295,1296,1298,1156,1319,1320,1321,207,208,209,210,211,455,220,1292,1297,224,358,360,511,222,223,480,481] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2900,3307,2198,2890,2898,999,2218,2174,2185,3304,3329,3262,3264,4521,4526,4528,3295,3296,2215,2217,2214,2226,2227,3559,3556] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [4514,4521,4526,4528,3296,4515,1032,603,998,999,4529,969,1241,1249,967,1007,602,1010,1008,1009,965,2217,962,593,1262,4513,591,592,1258,1255,1259] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2654,2655,2506,2507,2508,2509,2670,2519,2669,2785,3597,3453,3470,3599,3598,2808,3612,3613,3614,3742,2776,3620,3622,2512,2516] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3294,3329,4429,2188,3330,4431,4432,4433,4440,997,2132,2133,2134,2130,2173,2174,3296,4517,1032,1033,4474,4473,4487] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3152,3154,3160,3162,3126,3127,3983,3982,3477,3779,3471,3475,3476,3468,4021,4022,4023,4049,3766,3767,3768,3778] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4556,4560,4561,5410,5428,4563,5425,5426,5427,5395,5396,3529,3091,3092,3533,5359,5370,4537,4538,2237,6377,4536,4544,3549,3542,5397,4550] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4030,4031,4035,3776,3778,3764,3770,3781,4021,4022,4046,4047,4049,3768,4102,4111,4141,4037,3919,3948] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3056,3057,3058,3579,3055,2938,2939,3541,3525,3558,3522,3062,3526,3530,2883,2887,2205,2207,2209] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [855,857,1749,1180,1681,1477,1680,1475,1722,1720,1721,829,830,865,1464,1465,1466,1178,1179,1174,1169] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1079,1077,2100,1571,1573,1090,1572,1566,1574,1576,2094,2102,2088,2091,1583,1584,1586,2092,2093,2106,1083,1075,1076,1084,1088,1575,1577] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1260,1228,1245,761,1261,1278,1262,4504,4506,4508,586] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [6381,6323,6350,6352,6363,6312,794,1232,1233,1234,1237,6313,795,2262,2264] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [1473,1475,1617,1468,1479,1482,1846,1749,1720,1730,1741,1745,1734,1807,1737,1462] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        