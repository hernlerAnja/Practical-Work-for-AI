
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
        
        load "data/Q8N4C8.pdb", protein
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
 
        load "data/Q8N4C8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1249,1248,861,862,865,400,1326,1332,1334,1333,1323,1325,825,383,830,842,844,846,850,845,234,236,238,242,243,232,227,231,892,281,283,284,225,226,229,230,228,1234,1222,868] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [9227,9237,8832,8833,8836,10271,8375,9952,9953,10266,10264,8376,8359,8812,8365,8357,8813,9581,9222,9934,10260,9949,9590,9941,9945,9947,10262,9596,9592,9595,9599,9218,9588,9221,8810,9223] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1392,1360,1359,1361,1363,1364,1196,1234,1330,1366,1213,1192,1194,1195,252,246,251,1488,1479,1480,243,260,400,1332,1334,1333] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [91,93,566,567,565,665,662,92,533,679,682,685,128,686] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [8089,8116,8210,8211,8099,8100,8091,8094,8097,8196,8628,8272,8624,8627,8092,8093,8095,8599,8600,8603,8636,8598,8634] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [899,931,2424,2426,997,2401,959,966,971,972,973,930,965,2422] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [670,171,170,695,697,181,182,327,330] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        