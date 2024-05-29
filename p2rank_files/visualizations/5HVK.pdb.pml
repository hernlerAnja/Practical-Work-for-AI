
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
        
        load "data/5HVK.pdb", protein
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
 
        load "data/5HVK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [175,167,211,342,341,343,457,185,192,194,207,208,209,219,777,774,752,755,756,340,729,714,715,168,170,171,223,325,326,783,1132,1140,1145,1160,1238,1243,1244,1245,1246,1239,1240,487,486,1159,592,2431,2432,2434,2436,2443,2441,449,420,448,450,782,804,805,806,772,193,423] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [3867,3919,3868,3870,3923,3877,3885,3886,3909,4845,6120,4944,4840,4938,4455,4456,4859,4860,4434,4452,3871,4025,4026,6111,6112,6113,6114,6115,3889,6110,4157,4159,3911,3912,3913,4041,4042,4043,4186,4946,4187,4943,4292,4122,3892,3907,3908,4123,3910,4149,4967,4968,4969,4148,4150,4118,4111,4832,4477,4482,4483,4472,4474,4504] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [3365,1412,2445,2448,1398,1403,1407,1409,3417,3419,439,1391,2451,3428,193,411,418,422,423,2450,2444,2433,2443,1268,1269,2442,449,477,445,448,450,437,444,2432,2438,2439,2437,478,3390,3393,3427,2456,2459,2460,3363] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [5127,5129,5130,5111,6444,6447,5112,6445,6446,4821,4497,4833,4834,4835,4836,4837,4838,6116,6120,6119,3886,6124,6115,6110,5405,4499,5395,4531,4529,4530,6433] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [1702,1703,1135,1136,1137,1138,1452,1420,2434,2435,2429,1134,1133,1145,1435,1437,1438,2767,2768,2769,2770,2748] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [6061,6062,6064,5556,6063,6065,6066,6067,6068,5620,5621,5597,5602,5603,5593,5657,5604,5616,5630,5633,5634,6028,6029,5625,5629,5619,5555,5552] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [1863,1864,1900,1965,1966,1968,1901,1929,1928,1933,1938,1927,2375,2376,2336,1860,1905,1910,1899] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [4115,4149,5099,7095,7096,4967,4968,4969,4150,5100,4111,4112,6113,6114,6122,6125,5101,5104,7068,7069,6131,6128,6129,7070] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [7035,7036,7055,5186,5192,5194,5197,7056,6998,6999,7003,7002,5494,5472,7173,7176,7178,7181,6915,6917,6918,6946,6949,6936,6937,7187] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [1759,1881,6692,6695,1762,1776,1823,1753,1822,1842,1843,1835,1836,7206,7201,7204,7196,7197,6691,6953,6703,6701,6942,6952,7192] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [3323,3324,1802,3359,1494,1500,1502,1505,3378,3238,3240,3379,3380,3496,3260,3512] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1034,1037,1008,2114,1032,1040,1033,1041,2097,2101,2092,1587,1553,1554,2095,1556] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [4098,3902,3904,4122,6114,3894,6143,7102,7103,7104,3905,7105,6128,6133,6137,6136,6140] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [3399,2490,3435,3436,3220,2709,2710,2712,2714] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [800,1703,1135,1137,1138,831,799,830,797,829,782,804,803] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4736,5793,5784,5787,5789,5279,4734,5245,5248] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [5522,6085,5689,5691,6087,6083,6086,5520,5521,6092,6051,6053,5721,5723,5699] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2725,2728,2761,3351,3316,3317,3034,3050] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [6167,6734,7078,6389,7113] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        