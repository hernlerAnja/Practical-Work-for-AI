
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
        
        load "data/4YC8.pdb", protein
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
 
        load "data/4YC8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1084,360,1085,1086,1087,1088,1090,1072,997,998,601,604,597,594,1089,1091,308,310,307,969,544,431,549,248,571,566,570,256,260,140,138,139,563,125,127,128,569,593,526,545,527,528,529] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2587,2582,2583,3111,3112,3113,3114,3115,3116,3117,3110,2337,2341,2342,2343,2564,2259,2264,2268,2565,2567,2568,2369,2339,2370,2373,3023,3024,2599,2601,2169,2170,2256,2179,2180,2165,2164,2166,2608,2604,2607,2603,2154,2183,2632] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1482,730,748,749,754,760,1484,750,752,1485,1504,728,731,1739,1729,1740,1727,1487,1722,1725,1726,1488,1756,1757] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2782,2783,2788,3785,2784,2794,3502,3505,3508,2786,2765,3507,3468,3472,3764,3750,3751,3784,3757] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1136,2833,2439,2440,2448,2449,1114,1116,1110,353,2804,2834,2835,3069,2806,3070,1134,1113,1133,1109,1172,3049] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1172,1173,1194,3069,3039,3070,3052,1191,3040,3041,3036,2438,3085,2610,2588,2592,3086,3033,2596] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1009,1019,590,591,588,637,670,673,718,711,635,624,630,663,664,1027,639,1033,1035,584,667] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        