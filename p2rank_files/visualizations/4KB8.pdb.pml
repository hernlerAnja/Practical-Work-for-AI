
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
        
        load "data/4KB8.pdb", protein
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
 
        load "data/4KB8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4556,4818,5586,5587,5590,5591,5593,4552,4593,4595,5048,4852,4853,5045,5047,4699,4701,4703,5033,5089,5090,5457,5488,5585,5077,5070,4543,5115,4542,5066,5069,4614,5064,4594,4686] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3233,3235,3236,2722,2723,2390,2571,2703,2405,2296,2297,2298,2299,2403,2696,2697,2684,2248,2720,3108,2740,3137,3138,3139,2256,2250,2253,2244,3238,2407,3242,3243,2470,3237,2504,3119,2260] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [411,412,606,604,607,1144,377,1145,1146,152,154,1149,1150,1152,111,115,592,258,260,245,153,101,623,102,629,630,1047,648,1016,628,636,625,674,649] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [7807,7039,7802,7073,7804,7806,7265,7266,7253,6948,7272,7284,7286,6855,6856,6961,6963,6965,7290,7140,7291,7292,7813,6840,6857,6833,6837,7677,7707,7805,7708,7289,7309] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [6379,6380,6384,8495,8635,8660,6381,6382,5780,8474,8476,8477,8478,8480,8059,8058,6198,8508,8490,8501,8506,5788,5813,8494,8657,8658,8662,8067,8091,6357,6227,6228,6212,6217,6223,6189,6211,6216,5781,6200,6220,6235] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1804,1267,1268,1802,1609,1618,1620,3939,1800,1801,3949,3960,3965,3967,3517,3935,3518,3933,4120,3954,3936,3937,1799,4094,1300,3953,1275,1643,3550,1631,1632,1636,1637,1640,1650,1777,1647,1648,4116,4117,4121] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [6587,6635,6637,6572,6573,6574,6633,4283,4321,4323,6585,6615,6545,6546,6547,6540,6541,4256,4295,6586,4257,5270,5237,5267,5268,5269,6507,4319,4325,4291,6548,6508,6629] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1994,2049,2055,2053,8864,1991,1992,1993,8824,8825,2035,1961,1965,1966,2007,2006,1951,1952,1960,2005,8797,8798,828,1967,2057,826,796,1953,8835,8860,8862] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3144,3185,3151,3184,3183,2734,2735,4427,4428,4430,4432,2774,4445] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [8976,8977,8979,8981,8994,7343,7303,7304,7713,7720,7752,7753,7754] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [8023,8316,8324,8022,8025,8026,8320,8398,8399,8018,8019,8012,8304,8439,8017] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [6693,6695,6708,5123,6691,5534,5084,5500,5508,5083,5493] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4489,5024,4961,4982,4983,4694,4711,4505,4509,4510,4512,4485,4486] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        