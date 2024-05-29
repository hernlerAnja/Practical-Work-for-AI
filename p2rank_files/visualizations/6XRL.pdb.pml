
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
        
        load "data/6XRL.pdb", protein
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
 
        load "data/6XRL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2216,2218,2156,2214,2211,9970,9971,6810,9919,6812,9969,9972,906,907,2135,2136,6747,6786,6787,6788,6803,6804,6808,6811,6750,6790,9974,10285,10291,8976,10307,8995,9973,8998,8999,9001,6868,9840,9918,9841,10294,7433,7521,7522,6849,7520,7434,7435,7436,7437,7438,7439,6791,7369,9012,9000,7368,1940,1905,10041,10042,10045,10028,10029,10102,10101,2188,2189,2210,1071,1054,1052,968,966,2137,6751,2192,10103,2190,10033,10284,10252,9896,9898,10032,10034,10030,10175,10153,2264,2266] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [9702,11710,11691,9376,9378,9235,9199,9233,9234,9229,9338,9261,11533,10536,11534,11688,10563,11488,9236,9662,10452,10470,9661,11709,10436,10437,9336,9350,9370,9700,10271,11690,10483,10487,10489,10486,10273] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [12664,5254,12608,6417,6437,6438,6439,6440,6456,5796,5795,6436,6457,3156,3140,4481,12729,12730,5287,5299,5312,5317,5255,5720,6363,5735,5318,12887,12839,5272,12889,12840,12841,12907,12890,4482,4483,5266,5268] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [8926,7343,7362,8008,869,870,871,872,8927,1924,1926,1927,1928,1958,9053,9054,9010,9011,8925,9009,7342,839,2534,7347,2463,2515,7345,8061,8062,7994,7995,7993] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [6761,6762,6763,967,968,966,6286,6276,6282,6288,6298,6258,10043,10044,10045,10046,10052,10053,10057,10116,12551,12505,12507,6830,6831,6808,6760,6809] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [4587,4605,4610,387,386,403,402,4596,351,7746,441,4586,4588,4061,4065,4067,4238,4589,4595,7076,427] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [9880,12694,12710,12709,11786,12875,12876,12877,12878,12766,11780,11782,11365,12647,12649,12924,12874,11384,11763,11382,12922] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [853,1994,1787,2004,2005,1612,778,780,781,782,1756,1757,1758,1972,1808,801,803,2449,2450,779,1560,1558,1559,1570,1571,2019] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [7648,7651,9792,7632,7633,4523,4524,7688,7690,7634,4500,12726,6983,12743,12764,12779,12782,12781,4456] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [9702,11710,9235,11749,11501,11748,11750,9295,9261,9259,9236,9260,11751,11489,11487,11488] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [9531,9537,9541,9034,1904,1882,1892,1893,1902,1903,9528,1883,2219,2157,2158,2308,2305,2319,9544,1868,2353,2354,2307,2309] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [905,907,2131,2146,2147,2150,2156,7369,9011,9012,9000,9020,1940,1905,7439,8999,8976,8995] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2261,10176,10205,11141,11142,1137,1138,11201,11203,10172,10173,11204,11135,11134,11127,11086,11138] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [9001,9033,8981,9615,1905,2218,10456,10455,10454,10457,10499,10504,10264,10467,9629,9599,9611,10237] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4181,3725,4898,4913,3721,4896,3691,4897,5904,3711,3708,5956,5955,5954,5967,5902,5906,5970,6484,6511,6019,6021,6022] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [13544,10594,10725,13545,10593,10665,10643,10658,10662,13523,10645] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        