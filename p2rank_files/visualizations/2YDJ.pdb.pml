
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
        
        load "data/2YDJ.pdb", protein
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
 
        load "data/2YDJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [979,980,596,607,604,66,64,65,70,102,71,582,121,122,123,68,220,575,69,235,1070,100,97,99,101,556,410,1063,1069,1071,1064,951,952,963] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3116,3121,2177,2178,2179,2286,2608,3122,3123,3015,3003,3004,3032,2656,2659,2463,2613,2272,3031,2634,2648,2121,2627,2122,2124,2125,2155,2157,2158,2120,2126,2127] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [437,438,439,543,544,546,17,20,203,440,214,2411,466,467,2422,2470,2477,441,160,2471,2491,202,2,3,4,5,2472,2473,2394,2393,449,435,436,446,447,2488,2481,2392,2386] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2600,2576,2597,2599,2601,2518,2278,2488,2596,2598,2519,2489,2595,2068,2069,2094,2201,2279,2092,2076,2070,2071,2072,2073,2074,2075,2267,2577,2579,202,182,183,184,185] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1531,623,653,946,1515,1516,1517,947,1490,1532,1518,1525,625,1530,619,650,624,626,649,652,664,668] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3008,2676,2677,2678,2720,3582,3583,3577,3542,2701,2702,2704,2705,2715,2716,3566,3567,3568,3569,2999,2675,2998,2671,3331] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2615,2616,2618,3101,3056,177,3055,3048,3083,3057,3066,2472,2473,2439,2441,2442,2440,2622] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        