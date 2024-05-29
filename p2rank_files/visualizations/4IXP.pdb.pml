
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
        
        load "data/4IXP.pdb", protein
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
 
        load "data/4IXP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1225,308,1220,1229,1232,159,1079,1102,1062,734,736,1090,1078,1091,1092,1209,1211,1103,1118,197,307,1119,142,145,196,685,552,305,690,146,704,291,1355,1356,180,177,181,326,170,173,175,162,163,166,726,708,711] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [694,1195,507,557,560,2235,2581,2614,2637,692,693,695,699,1135,1146,1138,1145,1155,1157,1147,2585,2607,2613,2605,268,2645,2646,2604,2610,2611,270,542,1194,523,524,1175,2238,580,2593,578,696,700,275,276,703,558,272] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [442,1231,441,443,1215,465,497,1021,1022,1023,1024,1035,1037,1050,1032,1052,1325,1326,1249,986] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2563,2564,2565,2535,2343,2374,2375,2376,2545,2365,2366,2364,249,250,251,2537,2533,2539,2540,2543,66,78,80] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [918,1177,1178,889,913,915,2187,2192,2228,2230,2184,537,538,525,927,1175,914,923,922] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2248,2250,2267,2268,2275,2280,2282,2260,2253,2252,2574,2576,2473,2477,2490,2491,2495,2493,2496,2498,2492,2494] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        