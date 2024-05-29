
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
        
        load "data/3NAY.pdb", protein
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
 
        load "data/3NAY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [120,121,127,128,131,115,116,118,763,135,136,146,153,147,165,167,108,109,114,117,110,112,166,113,285,286,287,709,270,393,1229,1230,1232,1112,1122,1245,1254,416,1244,1231,453,1223,1225,565,1141,1224,1140,752,732,733,751,729,707,714,415,1084,1101,1335,1116,1117,1314,1316,417,418] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2397,3508,2395,2446,3502,3503,3504,3505,2445,2988,2844,2845,2393,2394,3419,2549,2993,3363,3379,3396,2399,2400,2406,2407,3404,3509,3511,3380,3614,2415,2410,2424,2425,2426,2432,2564,2565,2566,3510,3524,3533,2730,2731,2732,3595,3597,2693,2695,3039,3042,3391,3031,3420,3008,3012,3011,2388,2389,2391,3002] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [993,994,997,999,968,528,530,970,2149,2177,2169,2170,2175,2192,2194,991,529,547,537] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3270,3249,4420,4434,4461,2816,2815,4459,2809,2807,2826] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [158,295,667,665,103,105,160,174,34,79,80,81,82,685,78,641,686,159] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        