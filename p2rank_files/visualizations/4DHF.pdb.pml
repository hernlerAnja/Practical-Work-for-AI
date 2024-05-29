
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
        
        load "data/4DHF.pdb", protein
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
 
        load "data/4DHF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [732,733,1128,708,715,1127,158,268,157,127,128,126,285,283,284,712,694,689,439,736,742,97,98,103,104,105,107,110,125,101,99,1106,1194,1111,1195,1196,1199,1099] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2380,2395,2396,2397,2270,2551,2801,3307,3308,3311,3314,2213,3240,2824,2827,3239,2660,2806,3306,2844,2845,2848,2854,2210,2216,2217,2219,2222,2240,2269,2211,2214,3211,3223,2239,2238] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3223,2239,2238,3200,3341,3213,3224,2250,2251,2236,2237,3313,3314,2550,3318,3183,3329,3336,3338,2511,2396,2397,2484,2513,2514,2454,2518,2506,2508,2510,2512,2412] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [127,128,126,136,138,282,284,300,342,406,401,438,129,143,289,131,140,288,298,1230,1217,400,1201] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2403,2755,2775,2138,2139,2404,2183,2184,2182,2279,2281,2280] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1619,1322,759,1305,1331,1333,1545,1104,1103,1591,1592] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [263,227,242,243,244,245,246,247,12,200,13,202,576,574,572,573] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2526,2558,2556,2703,2705,2725,2429,2453,2519,2765,2766,2431,2432,2488,2489] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        