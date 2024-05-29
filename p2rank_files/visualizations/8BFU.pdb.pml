
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
        
        load "data/8BFU.pdb", protein
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
 
        load "data/8BFU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1219,522,523,5009,5010,5011,4219,4220,3937,4221,1217,1218,4251,4252,4253,4254,4255,4256,4257,4217,4226,5497,3941,3935,3936,3938,3939,3945,5523,3933,3946,5520,5522,5557,5558,5559,5560,539,538,4302,4303,3966,3972,3974,5684,5767,5699,5687,5697,4999,5000,5493,5488,5524,5525,5669,5667,5496,5464,5466,5690] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5152,6357,6241,6267,5807,5205,5805,5140,5824,5848,5849,5679,5758,5680,5763,5376,5775,5770,5774,5395,5396,5692,5757,5759,5781,6349,5779,5458,5460,6348,6356,5681] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2571,4056,2569,2573,2574,2416,2309,2409,4070,2343,2330,2333,2577,2424,2581,2289,2295,2299,2300,2302,2412,2321,2305,2306,2385,2384,216,217,218,234,4079,4081,232,233,2345,4408,2580,4397,4398,4399] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2559,2564,4029,4377,6870,2446,2452,2538,2549,2550,2551,2553,2555,2556,2279,4376,4038,6868,2471,2474,2475,2539,6878,6921,2276,2459,2461,2462,4360,4361,6862] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5710,5716,5719,4617,4595,4627,4628,4629,128,4292,4317,4315,4319,4320,5739,4653,4654] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4525,4553,4555,4213,4523,4552,4554,488,489,4212,4513,1415,1435,4981,4982,5016,486,498,500,1428,5014,5015,5020,1095,1098,5040,5042,1094] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1106,1226,1262,1220,1221,1224,1228,1073,1255,1256,523,5010,5011,1090,5023,5032,5033,5315,5325,5314,1299] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3669,3670,3672,3668,3955,3957,5534,5566,6790,6767,5562,5599,6769,3922,3923,5560,3943] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1065,1339,5274,736,740,743,1350,1354,1355,1344,1385,1097,1066,5267,1387,1356,1384,1118,1392,1417] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [5520,5522,5553,5554,5557,5558,5559,5560,539,538,5587,5588,1277,1278,1217,1218,1255,1256,1219,5551,5552,5642,1286] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4051,4094,4069,4071,2340,4053,4057,4060,3773,3774,2153,2152,2362,2363,4085,4091,4098,4103,3772] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [6387,6390,6388,5482,5483,6834,6836,6183,6184,5478] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3587,3339,3341,3548,2851,2879,3577,3578] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4352,4359,4361,4353,5439,5440,5441,5718,4332,4335,5725] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        