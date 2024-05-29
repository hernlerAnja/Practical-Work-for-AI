
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
        
        load "data/3OCB.pdb", protein
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
 
        load "data/3OCB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [123,130,133,293,738,739,740,5241,111,117,2449,2451,5240,1141,1218,1219,1220,1227,1140,1221,1222,1225,1226,442,1228,2411,2413,766,2395,2405,2415,2422,2419,2420,2421,715,2414,168,170,290,291,292,169,151,154,153,155,693,276,689,110,112,114,116,705,711,1083,1099,1124,1112,1113,1100,5262,5263,5247,5258,5239,756,758,761,794,793,388,417,441,1240,1241,389,309,145,146,148,150,308,406,412,404,413,1249,1250,1251,5260,5261,5264] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2883,3815,3816,3817,3818,3809,5319,5320,3330,3810,3730,3731,3328,3329,5037,5003,5009,4995,5005,5001,2880,2881,3279,2759,2866,2704,2743,2744,2760,2707,2708,2710,2709,2758,2701,2702,3690,5337,5341,5342,3673,5326,3714,3703,2728,2719,2720,2713,5041,5039,5336,3142,3283,3301,3305,3840,3841,3839,2738,3830,3831,3834,2978,2735,2736,3031,2734,2898,2899,2941,2994,2996,3002,3007,2979,2740,5340] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2190,2208,519,978,981,953,974,976,977,2233,955,2235,2084,2109,2085,2191,2110] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1341,1344,1255,1266,1073,1345,1245,1246,1247,432,401,409,411] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2999,3001,2990,2991,3841,3835,3836,3663,3931,3934,3856,3935,3837,3845,3022] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1359,1734,5272,5274,1357,1382,1722,1760,1762,5273,5268,5269,5270,5271] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3354,3356,5009,4995,5005,5001,4985,3327,3328,3329,3346,3348,3351,5011,5010] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3566,4699,4700,3545,4780,4781,3543,3541] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2256,1174,702,1166,1165,696,697,1157,698,1205] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        