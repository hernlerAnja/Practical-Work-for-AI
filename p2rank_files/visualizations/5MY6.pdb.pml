
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
        
        load "data/5MY6.pdb", protein
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
 
        load "data/5MY6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [18,23,27,28,29,13,3550,3530,3548,15,2027,2078,2079,2026,3531,3532,3540,3545,3546,212,3322,2084,3317,3533,3092,3323,3118,3324,3325,2178,2179,2109,2111,2081] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3348,104,3196,3128,3137,3154,3126,108,129,130,132,134,135,140,3157,105,3579,88,94,97,100,3156] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2035,1728,1732,1736,1737,1808,1771,1774,1792,1793,1794,2032,2041,2042,2036,1716,1722,1727,1702,267,268,456,455,457,9,16,260,283,284,446,447,448] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [82,3127,3129,81,2897,3115,2898,3121,3130,2916,2918,44,48,3110,2386,2388,2458,2623,2641,2390,2391,2454,2462,2642,2432,2448,2385,2610] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2594,2881,2882,2234,2597,2599,2600,2592,2185,2374,2401,2190,2196,2208,2191,2216,2222,2226,2410,2376,2225,2358,2359,2186,2175,2181,3099] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3614,3405,3411,3412,3660,3416,3440,3633,3450,3634,3629,3659,3661,3630,3632,3662,3665,3688,3431,3433,3427,3434,3436,3444,3438,3442] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1230,1234,1237,1218,1219,1221,1104,1106,1087,1100,5060,5052,5058,5063,1147,1098,1114,1118,5046,5064] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        