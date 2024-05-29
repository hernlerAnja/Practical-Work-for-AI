
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
        
        load "data/6GES.pdb", protein
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
 
        load "data/6GES.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1210,1310,1203,1201,245,799,350,225,226,367,383,482,483,487,1309,384,365,366,382,848,845,835,836,837,841,820,828,201,207,208,209,211,244,246,189,192,194,195,193,224,221,222,223,228,229,1301,1302,1306,630,800,798,1226,796,804,1323,515,1227,817,821,1189,1190,1326,1331,477,1332,1333,1170,1173,215] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3044,3687,3043,3046,3707,3736,3735,3070,3201,3095,3096,3097,3217,3051,3058,3049,3657,3658,3663,3218,3659,4160,4161,3481,4085,3696,3704,4086,3695,3700,3694,3676,3680,3678,3679,3052,3059,4061,4062,4069,4060,4168] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1590,1591,1592,2001,2009,2358,1556,3416,3417,1409,1588,2002,2365,5655,2350,2349,5654,5675,5676,5653,5672,1629,1645,2366,2357,1404] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4104,4122,3743,3744,3774,3775,3776,3824,3825,3862,3699,4093,3688,4098,3793] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3888,3914,3848,3850,5367,5412,3880,5365,5362,3881,3915,3916] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1633,1640,1641,2379,2390,1628,1631,1635,1636,1637,1638,1639,2396,5693,5705,2399,2401,5669,5670,5666,5671] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1263,1239,1247,1245,885,934,1003,965,966,917,877,884,840,830] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1513,1515,866,902,1526,1527,1188,1190,1491,1735,864,1203,1510] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4386,4369,4372,4374,4594,4643,4385,4350,4049,4062,3723,3725,3761,4047] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1467,1469,1473,1477,1479,1602,1622,1620,478,479,1333,470,1163,1344,1345,1329,1347,2673,2671,2672,2670] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        