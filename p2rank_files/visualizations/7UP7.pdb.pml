
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
        
        load "data/7UP7.pdb", protein
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
 
        load "data/7UP7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3153,2246,2241,2243,2244,2245,2252,2253,3253,3254,3256,3250,3255,3269,2405,2404,2277,2278,2259,3279,3280,3281,3282,2470,2471,2420,2449,2237,2389,2744,2747,2746,2291,2292,2403,2392,2242,2397,2401,2770,3169,3247,2609,3248,3249,2797,2233,2234,2240,3141,2235,3170,2751,2763,2765,2768] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [148,150,152,159,160,185,307,308,145,664,140,141,142,144,147,199,292,306,647,1061,1156,1157,1159,1184,1152,1153,1158,666,669,670,1078,1151,1148,1150,652,512,648,408,153,182,186,184,1049,1077] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [160,163,167,168,185,307,308,352,372,374,1157,1159,1181,1183,1184,1185,1158,1172,1173,1174,373,184,166,380,323] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1272,1494,2075,2077,2079,1698,1700,1701,1735,1733,1734,1243,1491,1497,1693,2072,2095,2097,1249] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3179,3206,2834,2943,2916,2863,2831,2918,2920,2842,2887,2958,2960,3181,2885] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2086,2072,1285,2076,2054,1006,1248,1249,1007,1009,2078,1247] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4189,4194,4196,4199,3347,4222,3102,3111,3116,4162,3346,3383,3105] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        