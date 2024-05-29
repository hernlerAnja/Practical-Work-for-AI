
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
        
        load "data/2BDF.pdb", protein
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
 
        load "data/2BDF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2774,2430,2316,2427,2428,2429,2773,2413,2778,3288,3280,3209,3185,3210,2823,2827,2262,2790,2796,2799,2820,3194,3287,2543,2572,2651,2652,2315,2317,2258,2259,2260,2265,2852] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [535,1068,1163,1171,1092,682,1093,145,702,703,706,710,679,1091,200,141,142,143,147,148,735,426,1164,1170,1077,311,310,312,296,656,199,198,657,313] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [460,461,470,469,472,473,474,2308,31,2310,2309,22,2253,2254,2329,463,14,17,2447,2450,1001,980,2749,2437,2227,2228,2229,2751,2750,2307,2326,2327,2330,2223,2730,2731,2440,2441,2446,2435,2436,2299,984,2181,2183,2184,2207] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [426,1170,1184,176,178,180,397,399,362,174,181,363,313,394,427,389,312,183] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3287,3285,3157,2540,2544,2542,2543,3301,2430,2429,2298,2300,2301,2278,2516,2434,2514,2479,2480,2291,2293,2295,2297,2317] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        