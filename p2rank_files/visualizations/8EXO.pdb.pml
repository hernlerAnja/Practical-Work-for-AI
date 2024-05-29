
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
        
        load "data/8EXO.pdb", protein
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
 
        load "data/8EXO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5501,6431,6434,6435,6436,5728,5808,6430,5416,5417,5807,5730,6426,5246,5727,5729,6428,5831,5867,5812,5823,5825,5828,5500,5435,5436,5437,5454,5473,5884,6346,6429,6347,5908,5192,5193,5909,5865,5181,5224,6437,6321,5539,5498] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4292,4293,4294,4295,4296,4297,4298,5040,3976,3977,3978,4260,4343,4344,5748,5573,522,4262,4261,5050,5051,5052,523,3982,5545,5546,5542,5572,3979,3980,5549,4014,5537,5733,5736,5716,5723,5512,5514,5739,5044,5508,5541,5535,5536] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [539,1243,1284,1285,1306,538,1304,5574,1246,1247,1248,3954,5609,1307,5647,3987,5571,5572,3985,3986,5600,5601,5691,5700,1315,5599,5640] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [2618,233,2610,2615,218,4440,216,217,4097,4120,4122,234,2384,2374,2377,232,2386,2616,2621,2622,2350,2343,2346,2347,2371,2453,2425,2426,2421,2465,2336,2613,2340,2408] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5021,5022,5016,5023,5082,488,489,1451,1464,1457,451,1454,1444,452,454,4253,486,478,4557,4543,4547,4550,4554,480,1461,1477,4564,4566,4593,4594,4595,4596,5006,498,500,1127] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [2600,2601,2591,2597,2598,2579,2580,2320,2487,2516,2515,2500,2538,7025,2594,7019,4079,4081,7073,7077,7078,4401,2493,2604,4416,4417,4418,7026,7027,4068] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [4694,4667,4668,4670,122,128,129,130,4381,5765,5768,4695,4658,4636,4663,4666,4333,4360,4361,4638,5759,4356,4358] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [5051,5052,1119,5074,5356,523,1136,1255,5355,5073] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [6648,6621,6605,7351,6649,6772,6774,7348,7367,7380,7347,6725,6726,6727,7349] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2618,233,2610,2615,218,4436,4440,4448,4441,4445,4097,4120,4122,4449,232,234,4415,4406,2638,2616,2621,4437] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [3573,3570,3545,3561,3594,3049,2965,2966,3564,2946,3050,3035,3341] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [4092,4132,4135,4139,4144,4126,4110,2381,3813,3814,3815,4112,2175,2176,2403] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [5041,5043,5816,5814,5815,5029,5073,5071,5391,5817,5366,5362,5364,5380,5821,5393,5049] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1095,1449,1385,1096,5309,5307,5308,5315,5317,743,740,1369,1383] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [5480,7035,5481,5482,7037,4394,4376,4373,4365,4400,4402,4393,5774] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [3589,3626,3587,2918,2919,2920,3617,3622,3618,3619,3383,3628,3381,3652,2886,2887,2890] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5036,5090,5409,5408,5800,5254] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        