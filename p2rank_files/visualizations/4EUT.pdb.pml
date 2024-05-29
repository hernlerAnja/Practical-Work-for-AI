
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
        
        load "data/4EUT.pdb", protein
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
 
        load "data/4EUT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4454,4471,4472,1255,1101,1102,1103,1113,1114,1112,129,131,132,139,752,1138,766,779,744,747,4456,4457,1086,1254,1268,1116,1122,1252,1253,1249,1136,1137,4480,4481,171,172,123,281,119,120,126,127,121,124,728,727,719,721,724,296,297,298,173,157,152,1246,1247,729,700,701,703,707] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [4327,4189,4211,4212,4322,3201,3782,3246,3247,3356,3196,3198,3194,3195,3200,3199,3204,3206,3207,4330,3372,4328,4329,3248,3818,3802,3794,3799,3819,4213,4321,3778,3777,3627] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3214,3217,3232,3204,3206,3207,4343,4330,3372,3373,4328,4329,3248,4188,4189,3201,3222,3228,3227,4345,4346,1379,1382,1385,1389,1391,4161,1396,1397,4177,4178,4176,4187,1406,4350] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1316,1360,1362,1381,1506,1382,1392,1394,1507,3506,4151,4349,4350,4347,1555,1502,1503,3449,1317,3479,3504,4345] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [4391,4433,4435,4437,4582,1270,1272,4458,4389,4364,431,1287,1076,1279,1274,405,404,429,402,427] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [413,355,357,411,346,374,311,312,314,664,667,668,407,408,410,409,449,451,672,453,671,441] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3121,3295,3678,3130,3131,3293,3649,3650,3661,3769,3653,3655,3332,3351] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [577,579,275,276,574,575,586,55,56,218,220,694] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        