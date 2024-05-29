
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
        
        load "data/3M1S.pdb", protein
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
 
        load "data/3M1S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3501,3927,3926,3475,2961,4007,4008,2960,2962,3162,3074,3075,3200,3450,2910,2911,3466,3468,3058,3898,3910,4009,4013,4014,4016,4010,4017,3455,2939,2940,2941,2942,2943,2944,2938,3901,3902,3903,2907,2913] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [258,257,755,766,207,744,354,742,749,240,238,369,1297,1300,1301,1303,1295,1213,745,1296,569,237,239,236,1197,206,209,1190,776,795,769,1214,1185,1187,1188,1173,1174,823] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4713,4723,4727,4728,4729,4702,4703,4712,4493,4526,1429,1419,1421,1316,1318,1320,1321,1147,1322,448,449,457,450,440,1324,1403,1404,4705,4707,1336,1337,1338,226,227,233,4516,4718,4720,4518] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1771,1789,2933,3887,2941,2943,1780,1782,1781,2931,2934,2935,2938,3903,4031,4037,4015,4029,4030,4033,3870,3910,4016,1790,2932] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1431,1157,1197,1299,1323,1324,1316,1317,1318,4493,4501,4483,4492,4494,229,230,231,234,237,239,1301,1302,1303,1188,1189,1173,1174,1190,4477,4502] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1449,1490,1491,1443,1434,1489,1773,1526,4127,1518,1772,4473,4479,1415,1408,4484,4485,1761,1767,4156,4201,4202,4203,4124,4120,4511,4236,4238,4240,4230,4122] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [183,181,182,27,159,160,28,41,721,650,631,633,266,268,264,267,362,361,269,379,380,651,655] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1782,1781,4141,4115,4116,1977,1979,3860,4035,3151,4031,4037,4033,1986,1988,1995,1996,1997,1839,1990,1779,1804,1814,4131,4133] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4246,4257,4269,4263,4268,4659,4660,4661,4675,4676,1534,1945,1957,1556,1410,1544,1545,1547,1557,1967] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3537,3538,3948,3945,3573,3575,3627,3696,3697,3656,3659,3661,3634,3660,3947,3967] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [943,944,945,946,947,948,827,829,831,868,869,914,832,984,1234,1232,1235,1233] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [3080,3082,3084,3357,3427,3356,2968,2969,2970,2971,2972,2973,2887,2864,2734,2862,2735,2748,3065,3066,3337,3339] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3807,4297,3799,3800,3801,4301,4302,4303,4304,5012,5013,3775,3808,5312,5313,3773,5004,4307,4308,4295,4984,4995,4294,5006] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1995,1996,1839,1814,2014,1813,2932,1782,1781,2931,4031] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2275,2278,2280,2586,2587,1090,2287,1062,1086,1087,1088,1094,1095,1589] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [5403,5236,5239,5408,5414,5401,5405,5409,5105,5241,5208,5210,5215,5224,5220,5149,5132,5124] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        