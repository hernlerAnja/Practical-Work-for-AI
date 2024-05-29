
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
        
        load "data/4GU6.pdb", protein
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
 
        load "data/4GU6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [127,133,725,136,129,131,289,690,1211,1212,1217,1086,1100,139,554,678,692,695,1115,1116,1186,1189,1224,1183,1095,1213,186,1215,1190,671,714,722] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3289,3290,3376,2921,3279,3307,3308,3309,2750,2867,2874,2910,2897,2918,2891,2886,2888,3379,3382,3383,3410,3415,2316,2368,2369,2310,2488,2313,2314,3406,3408,2322,2868,2502] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3580,3569,3572,3573,3574,3575,3579,1498,1500,3201,3204,3205,3206,3179,1511,1499,1997,3228,2004,3202,3203,2001,2000,1998,1011,1012,1013,3585,4075,4078,4071,4072,1501,4116,4117,1505,1506,2042,2043,1495,1035,1008,1009,1010,986] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1091,1396,1397,1349,1350,1351,1352,1663,1665,1087,1666,1667,1255,1256,1089,1382,1671,1384] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3615,3618,3650,3758,3850,3759,3818,3453,3898,3887] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1576,1684,1685,1960,1961,1959,1963,1544,1813,1818,1776] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1027,1028,1032,1052,1232,1233,463,464,465,438,442,1234,433,437,1198,1053,1054] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        