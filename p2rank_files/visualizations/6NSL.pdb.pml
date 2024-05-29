
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
        
        load "data/6NSL.pdb", protein
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
 
        load "data/6NSL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2030,2137,2029,2031,2015,1982,1989,1992,1995,2831,3083,3118,3120,3087,3089,1996,1997,3078,3077,3082,1990,1993,3051,3079,2843,2844,2866,2867,2830,2980,2981,2969,2138,2139,2977,2968,2973,2985,2122,2238,2986,2492,1973,2121,2533,2849,2852,2853,2550,2854,2855,2857,3273,3119,3322,1969,1970,1971,1976,3342,2498,2504,2882,2883,2588,3311,3318,1974,2501,2524,2525,2534,2494] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.702,0.278,0.533]
select surf_pocket2, protein and id [966,969,970,971,972,653,974,960,961,983,947,948,1241,130,123,125,129,691,1271,1270,1272,1235,1240,1239,1238,1463,1425,1470,1474,1491,1493,1494,1228,1539,637,636,122,162,163,164,256,148,128,102,103,104,108,109,112,115,106,239,599,598,240,107,999,257,1123,1135,1136,605,628,604,1000,583,601] 
set surface_color,  pcol2, surf_pocket2 
   
        
        deselect
        
        orient
        