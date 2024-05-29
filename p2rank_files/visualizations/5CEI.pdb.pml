
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
        
        load "data/5CEI.pdb", protein
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
 
        load "data/5CEI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [299,237,242,2811,1382,442,1384,1378,1383,1377,1237,1250,1385,1249,889,297,298,425,240,803,805,806,440,248,274,276,277,245,1274,651,827,1273,830,2812,2813,810,856,858,857] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4473,4474,4476,4505,3051,3085,4469,3112,3218,3216,3222,3226,3186,4463,4464,4475,3258,3228,4466,3227,3229,3230,3231,3232,3233,3234,4868,4869,4871,3190,3185,4845,4846] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3740,3742,1167,2875,2878,2880,2882,2895,1179,1185,1190,565,566,1211,1401,3731,534,1191,1461,1462,1633,1460,2869] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4919,4920,4921,4878,3268,4911,4915,4916,4917,4918,4967,3269,4948,4944,3305,3304,3306,4458,4459,4456] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [2423,2667,2408,2409,2419,2386,2367,1772,2379,2378,1768,2639,1027,2637,1020,972,973,1030,996,2683,2672,1021,1022,977] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2907,2926,2925,2928,2940,2941,2943,4181,4178,4531,4230,4533,4537,4538,4539,4540,4541,4189,4231,4232,4256] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1505,1528,1541,875,1529,1530,1506,1542,1243,1245,1756,903,913,915,945,1234,873,876,878,1236,1250,868] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3619,3605,3930,3932,5082,3946,3603,3604,5067,5081,5041,5044,3922,3941,3976,3988,6,3977,5090] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1412,1428,1430,544,268,271,458,508,509,510,512,513,1389,442,1384,1395,1398,1221,1381,1385] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1571,1572,2130,2093,2522,2523,2075,1605,1608,1609,2131,2516,2094,2095,2097,2121,2531,2118,2119,1623,1648] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [2017,2018,2022,2031,2010,2468,2291,2063,2064,2065,2066,2021,2030,2506,2507,2496,2502,2014,2490,2501,2464,2466,2295] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1640,1470,1472,1473,1551,1552,1206,1582,1549,1639,1430,1220] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1764,1022,904,1760,935,969,974,977,933,973,897,1044] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        