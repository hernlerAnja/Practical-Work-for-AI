
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
        
        load "data/2IJM.pdb", protein
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
 
        load "data/2IJM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2233,2246,2285,2286,2287,2419,2420,2421,2422,2239,2405,2265,2267,2556,2557,3342,3343,2249,3340,2227,2231,3216,3235,3236,2558,3311,3313,3307,2666,2786,3221,3199,3333,2827,2835,3237,2808,2804,2791,2836,2838] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [139,730,1137,734,1099,1135,1136,1205,1118,1207,321,320,322,458,457,1206,146,149,164,153,1233,1211,1213,1208,1116,1121,1117,1218,1227,1228,1229,155,157,166,185,186,187,319,305,686,691,131,708,727,704,705,127,133] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3674,3676,3767,3765,3792,3799,3804,3370,3393,3567,3532,3953,3951,3533,3535,3815] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1269,1270,1432,1467,1850,1851,1853,1715,1574,1576,1714,1852,1854,1667,1435,1635,1262] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3136,3142,2577,3162,3337,3326,3327,3328,3330,3149,3335,3338,2546,3342,3343,3339,2549] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1216,1042,449,477,478,1038,1036,446,1226,1237,1236,1210,1222,1049,1062] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        