
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
        
        load "data/3U87.pdb", protein
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
 
        load "data/3U87.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4109,4230,4231,4232,4233,3165,3166,3204,3339,3340,3175,3178,3196,3187,3191,3194,3738,4123,4096,4097,4225,4222,4226,4124,4224,4100,3322,3324,3558,3690,3691,3700,3219,3693,3695,3323,3218,3220,3338,3336,3560,3153,3155,3157,3158,3159,3160,3719,3731,3734,4125,3696] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1441,1444,777,1443,1445,1446,915,423,557,558,559,439,1328,1449,1450,1452,779,909,919,541,542,543,910,912,914,438,555,373,380,437,384,1342,1343,1344,374,376,938,1315,1319,385] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [423,557,558,559,670,439,410,575,1444,1445,1328,1449,1450,1451,1452,1468,411,412,413,415,597,633,1315,1316,385,393,394,1304,632,598] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4412,4410,4424,4425,4081,4082,4083,4390,4391,4091,4092,4641,4090,4696,4698,4699,4702,4704,4693,3764,4099,4093,4097] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1302,1311,1309,1310,1312,981,983,1318,1316,1320,1914,1915,1912,1629,1631,1917,1918,1921,1923,1610,1643,1644,1859,1860] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4693,4694,3794,4639,4695,4696,4697,4699,4702,3762,3798,4091,4092,4641,4647,4424,4425,3757,3760,3795,3793] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4109,4232,4233,3166,3175,3178,3182,3196,3194,4097,4068,4085,4391,4069,4257,4258] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1020,1841,1868,1352,1123,1113,1115,1159] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4304,4306,2972,3003,3004,4325,2974,4278,2993,2994,4273,4326,2965] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        