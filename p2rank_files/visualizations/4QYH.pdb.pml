
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
        
        load "data/4QYH.pdb", protein
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
 
        load "data/4QYH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2262,2263,2269,3160,2270,3265,3268,2254,2308,2307,2309,2804,2252,2255,2256,2251,2257,2421,2422,2505,2776,2758,2406,3176,3260,2608,3256,3259,3261,3262,2779,2793,2794,2796,3177,2801,3148,2770,2751,2753,2534,2535,2754,3275,3277,2780,2607] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [107,659,109,1031,1032,1003,631,634,635,648,106,112,115,118,117,162,163,164,275,277,261,608,1117,1115,1114,1116,1111,606,609,463,124,125,276,1123,1015,1120,110] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2263,3160,2270,2273,3266,3268,3136,3137,3448,3120,3442,3149,2277,3290,2288,3281,3289,3291,2286,3267,2422,2283,2285,2287,2278,3148] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [541,539,540,517,519,53,77,54,56,58,36,578,579,580,581,600,601,78,79,267,268] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3475,3724,3729,3730,2861,3714,3716,2819,2821,2823,3153,2850,3143,3689,2849,2816,2846,3713] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2413,2746,2725,2723,2726,2198,2199,2685,2222,2223,2224,2201,2745] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [676,678,671,674,704,998,1544,705,701,716,1568,1569,1330,1585,1579,1584,1586,1571] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [622,1048,1084,618,1101,438,1056,1057] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3193,3202,3229,3246,2763,2761,2762,2580,2583,2582] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        