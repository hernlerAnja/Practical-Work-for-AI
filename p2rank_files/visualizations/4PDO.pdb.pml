
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
        
        load "data/4PDO.pdb", protein
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
 
        load "data/4PDO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2899,2903,3275,3276,3277,3246,3347,3354,3357,2881,2896,2926,2717,2870,2873,2874,2375,2483,2376,2482,2333,2334,2336,2332,2866,2868,2466,2847,2848] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1261,1264,389,1182,1183,282,283,390,245,781,777,780,773,775,788,239,241,243,624,754,1254,373,755,281,1163,1184,810,1153,802,803,806,1162] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1998,1438,1437,1434,1436,1440,1441,1444,1431,2881,1997,1031,2003,1999,2010,2014,1465,2882,2883,1995,1996,1991,1994,1986,1057,1058,1059,1439,2396,2867,2868,2394,1027,1029,1066,2320,2321,1082] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [989,987,988,992,993,963,964,965,966,962,600,602,609,610,1229,1217,1223,1216,1228,1209] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3063,3056,3058,3086,3057,3080,3081,3082,3033,3302,3310,2695,3316,3320,2693,2702,3321] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2051,2049,3313,3314,3038,2937,2939,3004,3006,3008,2974,2975,2976,2993,2996,1964,2992,2020,2021,2022,2016,2019,2018,2892,2893,2894,3296,1975,1998] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2861,2885,2886,3289,3292,2856,3336,2728] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        