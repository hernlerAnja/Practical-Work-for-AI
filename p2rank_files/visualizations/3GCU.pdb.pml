
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
        
        load "data/3GCU.pdb", protein
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
 
        load "data/3GCU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1468,1978,1489,1904,1869,1870,1800,1764,1799,1773,1843,1868,2001,1456,1462,1466,1467,1766,1767,1433,1463,1436,1738,1434,1444,2222,2223,2224,2220,3013,3015,3029,3031,2908,2909,1464,2920,3030,1742,1741,1964,1965,1976,1966,1967,1968,1969,1936,1903,1935,1939,2910,2911,2912,2875,1934] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1324,1319,1330,1335,1337,229,1317,580,854,859,834,657,835,857,865,1332,1350,389,387,545,373,852,278,279,280,385,230,231,232] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3082,3543,3081,3568,3570,3574,2946,2948,3544,4049,4066,4068,3586,3366,3367,2987,2988,2989,3094,3096,4079,2945,3255,3289,4059,4061,4064,4050,4053] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [4164,4207,4168,4209,4936,4949,4954,4960,4961,4962,4210,4212,4213,4610,4157,4158,4191,4192,4485,4486,4483,4938,4562,4519,4716,4518,4611,4623,4588,4589,4942,4947,4654,4679,4681,4692,4694,4683,4459,4226,4229,4240,4246,4247] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1151,1156,1170,1328,1162,1164,1165,1166,1167,1168,1169,1326,1315,1314,650,1115,607,543,544,545,533,539,542,573,1327,1325,1321,581,658,570,571,606,1324] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3282,3290,3243,3279,3241,4044,4050,4054,4057,3896,3898,3885,3891,3893,3843,3880,3881,3248,3252,3288,3289,3247,3250,3359,3367,3315,3316,4043,3842,3844] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [246,248,411,412,420,408,418,413,421,5086,102,3739,5097,3774,3737,3773,5094,5096,3801,3763,3765,3799,3800,5090,5138,3341,3342,3352,3353,3775,3997] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [421,5086,102,782,793,783,246,411,412,420,408,418,413,414,397,402,273,110,109,111,398,115,116,117,792,794,105,3700,3701] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1489,1869,1486,1488,1894,1482,1484,1483,1485,1510,1502,1505,1507,1440,1441,1443,1521,1526,1527,2238,1528,2233,2231,2246,2245,2220] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [632,644,1070,635,1071,1072,2422,1010,1046,1008,1044,2378,2380,2365,2374,1036] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [154,171,21,22,23,331,706,709,39,41,699,11,2686,2689,2705,2706,173,687,691,686,2664,2666,696] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [844,604,661,618,610,2711,1303,1304,843,845,2712,678,629,620,621] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [457,465,461,464,3653,3631,455,470,3662,3629,3619] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3556,3560,4032,3338,5427,3387,5428,3370,3330,3357,4033,3329,3313,3319,3323,3327,3371,3372,3373,3376] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1818,2087,2088,2096,2085,1813,1816,2047,1683,1695,1697,1681,1686,2098,1667,1669,1670,1656,1657] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        