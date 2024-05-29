
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
        
        load "data/3P0M.pdb", protein
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
 
        load "data/3P0M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1284,1398,913,1296,1285,2823,283,294,295,322,323,324,339,341,289,282,2530,883,340,284,286,443,877,1397,1315,1399,1317,1400,1404,1405,1407,1420,1406,464,465,865,481,864,303,307,299,300,1272,1273,2831,2840,2843,2845,2847,2850,2821,308,318,319,2868,1433,2851,564,1431] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1176,1656,1177,1179,1664,1696,1665,1660,1693,2188,2219,2222,2195,1208,1205,1199,1198,1203,1462,1184,1145,1147,1149,1175,1183,2226,1152,2227] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [28,29,42,2261,8,12,13,30,31,33,1151,700,1122,1125,2378,1121,2339,2340,2341,2376,2377,2379,2351,2352,2356,2358] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1041,1043,1081,1082,2441,2433,1008,1012,983,984,986,2442,2443,2444,2445,2446,2447,943] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1067,2419,2414,1065,1031,1057,1032,2318,2328,1054,1055,2327,1061,1062,2371] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        