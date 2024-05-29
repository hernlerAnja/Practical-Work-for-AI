
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
        
        load "data/3V6R.pdb", protein
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
 
        load "data/3V6R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [240,1393,5242,438,439,445,446,449,451,448,440,443,232,1390,1391,1394,230,1364,3739,5258,1321,1343,1344,3740,3741,3742,475,471,473,474,2649,2652,5243,1368,1371,1374,1378,1319,1451,1161,480,481,482,483,512,1312,1313,1314,2619,1158,1178,1297,1298,1198,1177,1191,237,228,233,1383] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1485,1492,1493,1499,1488,1491,1497,1946,1948,3751,3749,3750,1774,4017,4018,4020,4032,4035,4036,1737,4021,1752,3672,4005,4007,4011,3635,3673,3661,3787,3786,1973,3627,1937,1942,1943,1972,1938,3697,3698,3714] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [258,259,260,364,365,383,801,802,800,349,213,845,848,824,820,823,215,210,209,228,216,218,227,233,245,241,236,366,838,839,841,1286,1287,1290,1289,623,522,523,1297,1198,479,481,483,478,1189,1213,239,240,1393] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3643,3975,3999,3640,4073,4075,4076,3613,3003,3004,3005,3006,3008,3009,3054,3144,3418,4072,3348,3596,3597,3031,3161,3055,3159,4081,3318,3984,3010,3615,3618,3601] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1382,1380,1381,1389,450,433,451,435,5279,1388,3394,5299,5300,5256,3776,3778,5247,5249] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [4246,4249,4252,4258,4708,4707,4704,4706,4501,4498,4496,4497,4506,4513,4535,4536,4736,4738,4733,4537,4747] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3655,4202,4401,4448,3657,3976,3969,3970,3971,3977,4168,4187,4201,4189,4450] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        