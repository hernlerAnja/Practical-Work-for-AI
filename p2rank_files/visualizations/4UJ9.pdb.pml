
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
        
        load "data/4UJ9.pdb", protein
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
 
        load "data/4UJ9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1436,1438,1450,1451,498,1454,1429,1437,1332,496,497,514,364,373,377,379,954,327,330,320,326,321,1320,1321,765,901,902,1428,322,378,1349,1430,324,481,1348,2590,1463,1464,2923,1462,2919,1292,1459,1461,2922,2939,2941,2912,2915,2916,2917,1308,1309,2903,2893,2895,332,333,335,337,338,339,341,360,361,358,359,346,347,353,355,356,357,345,631,1452,1453,597,620,1460] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [61,73,37,62,63,64,65,66,30,33,38,10,1194,1198,75,1191,1192,2313,1165,1166,2397,2414,731,733,2432,2433,2434,2435,2437,1162] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1706,1735,1738,2236,2278,1705,2271,2248,2274,2265,1220,1216,1218,1217,1186,1188,1224,1190,1193,1225,1228,2279,2286,2288] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [549,2646,2644,2669,359,515,519,522,505,858,2664,2663,859,850,2668,2658,2665,502,2651,369] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        