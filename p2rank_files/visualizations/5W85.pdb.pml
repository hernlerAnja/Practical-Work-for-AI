
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
        
        load "data/5W85.pdb", protein
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
 
        load "data/5W85.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1144,1145,280,281,282,1120,1220,1221,383,709,710,1222,787,232,762,763,231,233,237,238,247,248,249,250,1128,1226,1229,384,731,734,235,368,727,705,706,707,715,704,729,725,735,754,755,589,590,742] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [3332,3333,3409,2463,2464,2465,2919,2433,2551,3316,2443,2918,2898,2914,3408,2565,2773,2892,2893,2874,2888,2889,2890,3410,3411,2566,2567,3417,2887,2772,3308,2668,2669,2670,2428,2429,2435,2430,2436,2441,2431,2432,2910,2912,2970,2945,2937,2938,2917] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3802,4089,3810,3817,2994,3837,3862,3863,4087,2991,4088,2993,3795,3809,4047,4050,4052,4070,4059,4039,4045,3931,811,1605,1892,1598,1613,1638,1640,1653,1639,1654,1890,808,810,1891,1655,1657,4080] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1665,1666,3850,1674,1734,1613,1612,1842,1853,1855,3836,3854,3851,3852,3837,3835] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [251,254,384,449,400,401,422,1228,1229,444,445,446,1241,1242,691,483,484,486,485] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        