
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
        
        load "data/7KJS.pdb", protein
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
 
        load "data/7KJS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [242,688,651,85,87,259,257,1153,139,140,141,94,95,83,89,84,86,502,628,630,632,1145,1146,1147,637,629,631,1073,1074,681,657,1057,1150,1151,685,1045] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1210,3590,3544,3547,1223,1230,1213,3580,3581,3582,3583,4418,1200,1209,3197,1238,1241,4419,1195,1201,3525,971,1196,1197,3514,3506,3509,3510,3552,3551,2879,3543,3546,3549,2878,2880,2872,2876,2877,2918,3184,3185,3196,2917,3188,1187] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2415,2425,2407,2411,2414,2402,2400,3667,1208,1459,1460,3674,943,2216,2219,2199,1206,3673,3675,1219,1218,2455,2419,2454,941,940,3660,2175] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1819,2170,2176,2177,2185,2186,3683,3682,1431,1426,1427,1414,1420,1421,1828,1833,1861,1862,1437] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3609,3780,3970,4010,4011,4040,3743,3968,3998,3631,3630,3640,3642,3744] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3205,2859,2837,4366,2838,3212,3214,3207,3211,3222,3218,1248,1242,2860,1249,4394,4395,4396,4427,4361,4367,4359,4365] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        