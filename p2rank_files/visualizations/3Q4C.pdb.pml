
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
        
        load "data/3Q4C.pdb", protein
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
 
        load "data/3Q4C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2771,2775,2776,2774,2631,2369,2746,2381,2384,2385,2526,2286,2287,2767,2769,3275,3276,3283,3279,3280,3282,2628,3193,3195,2796,3191,3192,3194,3196,3165,2800,2801,3169,3176,2243,2246,2269,3281,2237,2768,2240,2234,2788,2789,2790,2791,2794,2795,2747,2551,2730,2732,2729,2552] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [642,662,666,260,522,637,177,160,178,272,275,276,417,259,658,659,660,128,131,134,137,638,442,665,680,1084,1086,1163,1166,1167,1067,1083,1085,1087,1170,1171,1173,1172,518,519,1181,443,1174,691,692,1056,1057,1046,682,687] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [493,498,485,1137,1153,2639,2636,2638,510,646,2607,647,1102,1104,2594,2602,3262,530,527,3211,3213,3214,1136,3219,3246,3245] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [646,2606,2607,244,238,241,651,672,1104,1105,652,248,245,246,676,2614,3020,648,2999,3000,3002,2969,2991,2968,3001,3246,1113,3245,3235,2615] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3213,3214,2781,1136,3219,3222,2760,2757,2353,2354,496,497,498,1137,2752,505,911,2350,890,891,892,893,882] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [236,3078,221,71,72,73,74,75,227,219,70,210,211,212,4127,4100,3042,3043,4101,228,233,235,237] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [416,151,152,153,154,380,354,355,273,274,289,290,292,271,279,280,415,624,387,379,381,382,385,353,610] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2333,2345,967,969,976,977,978,2184,2162,2163,968,971,2183] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        