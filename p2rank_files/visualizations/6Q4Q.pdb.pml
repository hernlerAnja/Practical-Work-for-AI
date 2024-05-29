
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
        
        load "data/6Q4Q.pdb", protein
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
 
        load "data/6Q4Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4145,4150,4136,4138,4457,4491,4492,4459,4463,4467,4449,4455,4477,3223,3227,3229,3230,3231,3232,3239,3241,4122,3210,3219,3220,4294,4293,4149,4162,4177,4178,4283,4285,4286,4287,4288,3385,3603,3605,3766,3249,3263,3264,3265,3383,3741,3368,3381,3738,3740,3369,3234,4313,4318,4319,4320,3426,3429,3430,4310,4311,4312,3431,3497,4295,3458,3798,4154,4155,4151,4152,4153,3827,3817,3818,4789,4792,3846,1532,1533,1543,1548,1736,4479,4480,1549,1550,1551,1526,1531,4794,4797,4799,4726,2,8,4,3205,3208,3211,1,3199,3204,3206,3198,24,25,3782,3783,3777,3779,3200,3202] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [412,547,1449,1442,1443,1441,548,1438,766,768,1440,930,368,382,383,362,1340,946,927,1341,386,390,401,403,544,546,901,903,904,898,530,426,428,427,365,531,1450,660,1285,1300,1301,1325,1313,1314,961,1312,1315,1316] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4825,4826,4827,4828,4830,211,4783,180,182,4844,4845,1520,173,185,190,1539,1540,1541,1488,201,202,1487,1489,209,210,212,1558,1560,622,623,4822,4914,4918,4803,4812,4922] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [412,595,596,1447,1448,1449,383,386,401,403,1612,1285,1473,1474,1300,1301,1325] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1632,1634,1645,1316,1318,980,981,1610,1299,1301] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [147,128,137,143,148,5160,5162,4878,4880,4904,4905,5163,109,111,4852,4851,4853,181,4840] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [65,2692,2694,1755,1761,75,1193,52,53,55,2645,2641,2632,1219,2695,2689,1759,1769,1773,2672,48] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4614,4056,4617,4608,4622,4623,4626,5533,5539,5544,2879,2896,2878,4649] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        