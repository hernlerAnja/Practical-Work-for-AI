
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
        
        load "data/4U97.pdb", protein
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
 
        load "data/4U97.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3334,2372,2373,2374,2375,2376,2406,2407,2408,3336,2377,3335,2811,2812,2609,2353,2354,2359,2360,3235,3251,2864,3227,3252,3328,3333,3327,3324,3329,3330,3337,2641,2860,2865,2889,2817,2833,2494,2711,2806,2807,2808,2809,2810,2355,2357,2358,2836,2856,2857,2844] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1175,1176,1177,655,1099,573,654,665,670,681,712,713,1100,704,705,708,737,684,692,1182,1184,238,239,1178,1181,1075,370,656,658,222,223,268,270,269,216,225,228,236,237,235,220,356,677,659,372,660,471,657,1185] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1373,1993,1994,1218,1219,1326,1327,1329,1330,1333,3799,3800,3801,3802,4100,1982,1984,1978,1986,1991,1971,1233,1355,1357,3765,3767,3745,3751,3776,3773,3775,3728,3733,3736,3740,3455,1358,1359,3791,4104,3789,4082,3764,3798,3794,3790,3793,4081,4097] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3367,3369,1048,1183,1184,3368,238,1180,236,242,243,235,228,1197,1198,248,249,250,251,252,1200,1205,1196] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1546,1547,1306,1307,1542,1539,1550,728,729,1071,1499,1063,1076,1064,3351,1552] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        