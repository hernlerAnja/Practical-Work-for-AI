
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
        
        load "data/3SAY.pdb", protein
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
 
        load "data/3SAY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1221,1222,1209,1335,1336,1338,1232,1220,1330,1249,213,216,204,210,814,801,795,4290,4598,4607,4608,841,842,4601,230,238,240,4250,241,222,1192,1190,1359,1495,1191,1481,1484,1485,1490,370,371,372,1332,1337,1329,1331,466,583,579,1248,581,259,258,206,208,788,779,781,205,763,504,768,355] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4005,4114,4115,3578,3579,4033,4034,3562,3565,3572,2983,3558,2980,3131,3551,3351,3538,3540,3545,4017,4117,4120,4121,4123,3147,3148,4116,3146,3243,2992,2986,2989,3016,3017,3033,3034,3035,1813,1809,1812,4006,1815,1818,1819,3993,3994,3620,3622,3624,3591] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4301,4303,4286,4293,4298,4299,4300,4302,830,832,4520,4563,4564,1513,1515,1516,1517,1507,1514,1511,1512,1528,1774,1529,1731,1775,4282,4278,4280,1504,1496,1500,3607,3609,4010,1805,4009,3992,4314,4315,1209,1224,1494] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4054,4055,3764,3766,3767,3768,5325,3679,3741,3634,3636,3635,3802,3804,3734,3678,3661,4052,4074] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4807,4808,4830,4849,4853,4845,4861,4618,4619,197,199,4363,4612,4616,4643,4373,4651,4676,4841,4614,4360,4366,194,198,200,4820] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1637,1639,1125,1640,2346,2353,2341,2344,2324,1643,2335,1630,1631,1632,1638,1123,1122,1121,1129,1097,1095,1098,2657,2656,1130,1133] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [4017,4122,4123,3011,3014,3975,3977,4144,2992,3001,3016,3993,3994,3976,4280,1504,1472,4007,1809,4006,3006] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3138,3415,3517,2818,3413,3157,3432,3433,3044,3046,3042,3043,3045,3155,3041,2959,2960,3040,2936,3139,2804,2805,2937] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1267,1269,978,979,981,982,983,850,851,1019,1270,893,894] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [379,267,740,264,363,381,184,265,268,269,270,29,160,161,665,666] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [4428,4417,3910,4416,4418,4424,4426,3907,3908,3914,5148,5151,5160,3882,5153,5459,5460,5131,5142,4432,5112,5117] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1830,2974,2975,2976,2028,2029,2030,2023,2026,2995,2994,2036,1822,1824,1825,1829,1855,1587,2050,1574,1580,1585,1577] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2475,2552,2554,2559,2583,2585,2748,2750,2753,2756,2745,2492,2467,2448] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        