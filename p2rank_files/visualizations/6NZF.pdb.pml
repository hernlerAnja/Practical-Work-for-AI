
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
        
        load "data/6NZF.pdb", protein
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
 
        load "data/6NZF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2084,1939,1992,1993,1994,2837,2838,2836,1945,3101,3102,3103,3373,2085,2450,2865,2866,2835,2832,2849,2951,2827,2826,2814,3066,3070,3072,1959,1960,3061,1978,2100,1952,1955,1958,2102,2952,2960,2850,2813,2445,2101,2201,2968,2969,2972,3263,2520,3301,3308,3312,2462,2464,2471,1936,2495,2504,2503,1932,1933,1934,2840,2557,3332,2472] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.702,0.278,0.533]
select surf_pocket2, protein and id [131,944,945,957,958,981,130,1242,1243,653,963,967,968,969,971,1229,1236,1271,1273,1240,1428,1272,1476,1493,1496,1249,1542,163,164,257,259,149,165,126,116,123,124,150,360,1140,129,636,637,104,105,109,110,243,107,244,599,996,628,997,966,1124,261,980,1136,1137,1132,260,583,604] 
set surface_color,  pcol2, surf_pocket2 
   
        
        deselect
        
        orient
        