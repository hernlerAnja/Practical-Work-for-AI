
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
        
        load "data/3QGY.pdb", protein
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
 
        load "data/3QGY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2078,2079,2135,3002,3093,2254,3112,3096,3098,3099,3114,3128,2966,3129,2089,2090,2093,2094,2119,2120,2084,2085,2087,2118,2109,2305,2117,2106,2108,2110,2111,2113,2115,2304,2676,3090,3091,3092,2988,2646,2647,2650,2654,3017,2655,2674,2081,2080,2614,2616,2082,2134,2237,2594,2596,2592,2593,2597,2253,2372,2598,2250,2251,2252,2345,2340,2343,2332,2473,2602,2622,3016,2618] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [686,687,690,1057,1058,662,663,1134,1132,1133,293,294,290,634,635,636,637,638,441,658,656,275,276,277,632,633,659,642,118,122,124,174,175,694,1029,1038,695,1034,1137,1138,1043,1139,718] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2538,2541,2558,2533,2536,2047,2049,2031,2520,2572,2519,2555,2004,2005,2009,2010,2013,2261,2556,2557] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [301,559,560,595,612,589,590,591,598,70,45,50,53,574,87,88,89] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [413,409,620,383,385,1154,441,442,1134,1133,291,292,293,294,638,617,149,307,309,345,1139] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [665,1067,646,651,1100,1102,1118,1119,523,1073,1070] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3306,3339,3450,3309,3307,3593,3582,3745,3746,3747] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        