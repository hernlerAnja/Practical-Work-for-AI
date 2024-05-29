
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
        
        load "data/5WO4.pdb", protein
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
 
        load "data/5WO4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3127,3151,3153,3501,3594,3600,3487,3150,2540,2541,2542,2603,3603,2602,3595,2550,2552,2553,2547,2548,3515,3517,3097,3100,3516,2544,3092,2545,3119,3122,3118,3108,3080,2734] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [295,1304,294,236,234,426,1216,1217,781,798,244,245,242,239,240,1188,852,854,851,853,232,233,820,823,1218,801,819,237,809,1301,1296,1295,1202] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3760,2817,2818,3641,3642,2580,2566,2819,2787,2570,3626,2567,3756,3757,3758,3727,3618,2816] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1587,1987,2018,2020,1995,3883,1959,1989,1990,4269,4297,4299,4300,4328,4330,1584,1585,1586,4305,1962,4272,3884,3885] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1457,1458,1459,1461,262,1325,1156,1319,1321,1331,1327,1428,509,510,511,1343,505,1342,508,507,259,272,258] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4144,3831,3795,3798,4145,4142,3143,3144,3490,3491,3492,3830] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1193,1499,1532,845,1191,1192,1531,1496,1835,1834,1832,844] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3490,3492,2550,2552,2553,2559,2560,2548,3616,3602,2561,2562,3501,2603,3601,3603,3465,2569,2571] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4590,4593,4595,3952,3979,4602,3389,3953,3390,3391,3366] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        