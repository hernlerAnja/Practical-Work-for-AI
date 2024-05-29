
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
        
        load "data/6YA6.pdb", protein
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
 
        load "data/6YA6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [230,231,1284,218,219,221,223,224,1276,211,212,1176,794,795,1175,769,239,238,241,245,234,1306,257,268,270,269,395,758,763,214,216,1277,619,1274,1275,749,753,1283,1156,1135,1147,1148,1149,793,1120,1136,1661] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [426,421,445,703,704,712,687,688,3266,102,713,714,3240,3241,3242,66,68,435,438,252,253,229,431,432,436,3233,62,63,64,38,255,262,263,281,208,39,40,41,42,101,92,98,99,254,416,419,233,696,3275,3264,3317,3318,3263] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1786,2603,2605,2600,2604,2606,2618,2611,1793,1794,1047,1045,1046,1054,1785,1332,2565,1796,1799,2583,1821,2594,1795,1049,2572] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2037,2039,2065,2072,2999,2992,2256,2040,2237,2232,2233,2236,2812,2227,2225,2826,2994,2995,2993] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1775,1782,1785,1787,1330,1332,1793,1794,1047,1046,1786,2603,2605,2565] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [619,608,613,620,621,753,754,755,577,580,578,579,773,775,1261,1242,1248,597,598,776] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        