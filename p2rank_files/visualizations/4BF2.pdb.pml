
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
        
        load "data/4BF2.pdb", protein
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
 
        load "data/4BF2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [303,566,585,186,1031,137,184,139,185,288,140,589,608,610,1032,604,607,596,1116,1117,452,584,1115,374,376,1124,1126,1127,1128,1135,305,564,565,378,135,136,141,142,154,155,623,1121,1122,1123,1136,1120,1005,1016,347,348,354] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3013,3014,3097,3098,2110,2988,3015,2587,2590,2591,2994,2999,2613,2606,2609,2567,2158,2159,2160,2277,3099,2278,2572,2262,2113,2583,3104,2129,3106,3103,3105,2109,2115,2116,2117,2119,2128,2111,2435] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2372,2373,2375,2376,2377,1362,1316,1317,3151,1852,3152,1844,1841,1842,1843,2344,2385,2906,2909,2907,2908,2927,1177,1350,1351,1352,1354,1358,1359,1363,1360,1361,1315,1332,1335,1336,1337,1367] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2567,2160,2548,2277,3099,2278,2549,3107,3109,3100,3105,3118,3119,2279,3104,2129,3106,2355,2357,3111,2326,2327,3098] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1362,918,1880,1866,1883,1884,1895,1896,1897,1842,1354,1358,1359,1363,908,1360,1364,1885,1889,906,1367] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [725,750,774,775,808,809,698,699,700,701,702,704,797,1050,1051,1052,1053] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2757,2758,2791,2778,2780,2681,2685,2708,2682,2684,2733,2792,2687,3038,3033,3035,3036,3057,3058] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        