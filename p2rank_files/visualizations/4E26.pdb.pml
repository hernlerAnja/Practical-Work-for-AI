
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
        
        load "data/4E26.pdb", protein
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
 
        load "data/4E26.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2829,2684,3249,3250,2437,2439,3335,2304,3329,3330,3333,3334,3337,3336,2423,2821,2822,2823,2340,2341,2435,2431,2828,3223,3246,3248,2303,3230,2291,2292,2294,2843,2845,2846,2850,2801,2685,2580,2800,2421,2422,2786,2783] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [638,522,667,1086,666,1166,275,276,417,1167,1170,1173,158,1171,1172,1083,1085,687,1056,1067,1087,680,682,686,659,660,128,125,137,176,178,131,642,662,658,260,637,177,274,272,620,665] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1153,2809,2810,3316,1102,647,1104,1110,510,527,529,646,530,2648,2656,2661,2690,2693,493,498,1135,1136,1137,3265,3267,3273,3293,3289,3299] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [651,245,654,675,3045,241,248,2660,2661,2668,238,3074,3076,648,652,643,244,647,1105,1104,1113,3053,3055,3300,3054,3299,3022,3023,3056] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [496,497,498,491,505,1126,1136,891,892,893,2811,2407,911,913,2393,2401,2404,860,859,881,882,2814,2835,2838,2408,2411,3276,3267,3268] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [447,451,452,2171,2167,2168,2188,2191,25,2186,2610,2614,2615,4,10] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        