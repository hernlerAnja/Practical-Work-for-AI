
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
        
        load "data/2GMX.pdb", protein
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
 
        load "data/2GMX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1376,1377,1379,1378,4325,4327,4328,4332,1381,1382,1757,1759,1761,1764,1767,1768,1769,1770,1998,1766,1792,4908,4910,4931,4932,4925,4326,4476,1394,1393,1491,1498,1501,1370,1970,1969,1510,1504,1511,1512,4355,4426,4453,4460,4716,4960,4754,4726,4730,4732,4467,4468,4473,4472,4474,4719,4721,4722,4723] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3761,4240,4241,3215,3216,3314,3167,3170,4140,3172,3165,3166,3171,3766,4164,3773,3780,3784,3777,3169,3807,3806,3801,3805,3790,3791,3797,4249,3509,4242,4243,3329,3330,3331,3762,3217,3182,3185,4149,3181,3175] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [254,253,255,208,804,811,352,815,817,368,369,219,220,215,845,835,820,821,834,516,1280,1281,1284,1285,1286,1187,1277,1279,620,799,1278,800,1178,843,836,837,1202,839,818,204,209,210,213,205,206] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1389,1138,1139,1140,1353,1534,1536,1537,466,468,1324,1349,2673,1493,1494,1391,1411,1412,1136,1489,505,476,477,1309,443,2706,1405,1524,1527,1358,1359,1367,1370,1371,1372,1386,1374,1392,1491,1357,1360,1482,1512] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4635,4636,4670,4667,4680,4812,4813,4682,5088,5100,5083,5085,5089,5076,4809,5129] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4345,4349,3429,3430,4321,4337,5645,5647,4315,3406,4334,4102,4284,4266,4268,4269,3467,4286,3438,3439,4270,4348] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4731,4771,4959,4961,4995,4733,4734,4982,1997,2033,2041,1772,1775,1777,1806,1807,1809,1769,1750] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1697,1705,1674,1703,1707,2126,2127,2123,1851] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4864,4890,4892,4894,4508,4509,4506,4507,4481,4484,4485,4486,4487,4488,4489,4501,5339,5340,5344,5333,5334,4889] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        