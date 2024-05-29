
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
        
        load "data/2H96.pdb", protein
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
 
        load "data/2H96.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4496,4759,4360,1989,4386,4387,4388,4756,4758,4766,4768,4762,4967,4971,4972,4962,4950,4351,4352,4353,4354,4355,4356,4350,4345,1792,5000,4995,4998,1388,1377,4372,1381,1527,1533,1534,1975,1383,1384,4366,1991,1996,1986,1974,1396,1421,4965,1415,1416,1394,1397,1780,1786,1790,1520,1782,1783,1814,4964,1777,2022,2024,1532,1995,1788,4508,4499,4791,4792,4764,4790] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [4275,4276,4277,4177,3347,3348,3349,3789,3790,4269,3186,3233,3235,3188,3234,3332,4169,4170,3184,3190,3193,3199,3200,4156,4157,4401,4140,4168,4268,3836,4192,4267,3794,3801,3806,3825,3826,3827,3808,3818,3824,3810,3811,3207,3203,3208,3212,3219,3220] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1297,864,216,834,1296,1220,829,836,838,839,832,227,228,219,212,218,1205,1196,862,863,847,853,854,855,846,852,376,817,248,261,262,263,360,818,822,1305] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [4358,4361,4364,4365,3456,3457,3458,3493,3495,3467,3466,3464,4343,4349,4336,5675,4371,4369,3433,3434,4330,4531,4534,4535,4313,4314,4487,4492,4532,4411,4125,4126,4127,4129,4130,4296,4295,4304,4311,4294,4491,4298] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1399,485,486,1405,1391,1342,521,523,2699,1158,1324,1332,1340,462,492,461,494,1322,1323,1398,1393,1372,1373] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1428,1425,235,1325,244,1304,1303,1305,240,231,232,233,236,1441,1168,1205,1184,1185,1197,1198,228] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1727,1871,1873,1740,1729,1730,1731,2164,2150,2147,2149,1872,1742,1719,1711,1695,1696,2152] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4686,4671,4687,4672,4706,5129,5123,4847,4848,4849,5169,5116,5125,4703,4695] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        