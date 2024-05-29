
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
        
        load "data/5VXZ.pdb", protein
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
 
        load "data/5VXZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4449,4451,4452,4453,2992,3006,4412,4417,4410,4414,4211,4214,5822,3301,4217,4218,4219,4224,4441,4438,4443,3049,3051,3053,3050,3052,3068,3072,5796,5799,3066,5801,5790,5780,5782,5776,5785,4531,4532,3005,4431,5834,2983,2987,3305,4473,4450,3306,5821,4511,4513,4514] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2888,2889,1516,1517,1518,1519,1520,1540,115,117,118,119,120,1278,1281,368,1284,1285,72,73,1510,1498,1505,1508,1291,372,1580,50,54,56,59,2843,2847,2849,2866,2868,2867,133,1598,1599,1578,2852,1479,1484] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [4190,4193,3066,5762,4194,5761,4195,3081,3087,3089,3092,4212,4213,5796,5799,5806,4202,4208,5721,5776,3094,5774,5790,4200,3052,3064,3070,4214,3053] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2828,2829,2869,133,1279,2788,1276,1267,1275,2843,2857,2863,2866,131,119,120,1281,2825,154,137,148,156,1261,161,163,1262] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1410,1412,6254,221,1346,1386,1390,1387,1383,220,1343,6239,6238,1371,1372,241,243,1344,1324,1326,1321,1373] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [4290,3174,3194,4291,7031,4304,4305,4306,4307,4321,4323,4320,4319,3153,3154,7032,7047,4279] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        