
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
        
        load "data/7BW8.pdb", protein
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
 
        load "data/7BW8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [480,591,581,582,576,578,579,338,334,335,336,337,331,332,333,239,240,481,241,245,510,262,73,253,96,95,593,361,360,366,367,378,120,121,122,362,592,372,223,224,356,59,61,149,364,117,118,116,43,44,137,533] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [945,557,748,556,825,827,838,824,730,733,925,746,889,864,867,1058,1061,1063,1257,1258,636,732,465,891] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [1786,1790,1615,1617,1619,1620,1807,647,1774,421,422,1565,1568,1840,1793,1791,1,185,184,414,1781,1783,1613,1618,1616,1602,1577,1614,7,19,8,6,177,178,4,437,418,1842] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3435,4292,3230,3233,3411,3412,3474,3477,3478,3239,3475,3482,3485,4334,4336,4330,3415,4291,4293,4294,4270,4273,4275,4258,4360,4280,4295,4300,4343,4340,4345,4266,3443,3464,3467,3470,3472,3434,3440,3444,3441,3442,3447,4254,4253,3922] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [2486,2476,2477,5500,5501,5502,5503,2493,2497,2498,2500,2499,1148,1149,1151,1150,1122,2474,708,719,2514,2516,2311,1131,1133,1134,1129,1130,2472] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [454,456,5601,5602,215,5600,5605,5846,674,455,233,216,668,2335,683,686,688,5567,5569,5603,5609] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [5238,5241,5915,5520,5522,5557,4702,4670,4671,4672,5910,5879,5917,4701,5222,4700,5298,5299,5296,5242] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [4632,4730,4732,4599,4600,5187,4629,4613,4617,5324,4612,5201,5190,5191,5308,5309,4471,5186] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [4981,4645,4641,4654,4643,4677,4621,4680,5675,4961,5714,5715,5667,5668,4971,4976,5712,5672,4661] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [3290,3291,3292,3354,3355,3362,3353,3255,3400,3401,3399,3402,3263,3265,4312,3415,3266,3232,3233,3413,3414,3329] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [270,272,271,274,5757,5760,5762,257,5620,5730,5751,5749,5727,5824,5823,78,79,80] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [5880,5723,5544,5545,5546,5551,5586,5549,5696,5697,5698,5523] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5168,5344,4565,4566,5148,5361,5364,5365,5367,4567,5366,5075,5074,4582] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [1327,1324,1328,1333,1361,1355,882,883,871,1311,1075,1322,875,1384,1385,1386,1313,1391,1475,872] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [756,758,5549,491,768,764,5588,5729,500,501,5621,5730,5704,5701,962,961] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [3535,3537,3641,3549,3539,3663] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [4207,4208,4209,4148,3625] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2648,2456,2457,2664,2666] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [2454,2456,2457,2471,2473,2543,2306,2542,2757] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        