
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
        
        load "data/2A91.pdb", protein
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
 
        load "data/2A91.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2116,2118,2186,2091,2092,2104,2085,2117,2034,2086,12,26,28,2033,40,41,42,281,282,468,36,276,277,50,292,673,674,58,2107,2185,3103,3105,2179,2184,61,46,3127,3148,3150,3331,3332,3542,3333,3334,2095,3326,34,39,216,3555,3557,3554,13,3540,3541,3539,3342,3552,3553,3565,3335,3343,49,3101] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2039,2041,2042,2048,2049,1744,1778,1708,1781,1801,1709,2043,1739,1743,1729,1735,1723,1815,1699,1707,21,29,280,263,264,451,452,453,443] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2477,2482,2485,2410,2411,2907,2416,2418,2457,2641,2924,2484,2659,2660,2927,2926,95,93,3138,3145,3124,3130,3136,3139,2906,3119,3120] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3137,3138,3146,101,2925,113,117,3357,3204,3205,69,153,3162,3164,3166,110,107,2927] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2192,2401,2197,2198,2223,2231,2232,2234,2230,2210,2435,2612,2400,2426,2615,2240,2243,2617,2891,2182,2193,2194] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [29,280,2031,2033,263,264,453,279,2039,2041,2042,2048,2049,2061] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        