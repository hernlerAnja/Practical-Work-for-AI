
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
        
        load "data/2RFD.pdb", protein
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
 
        load "data/2RFD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1184,1019,1155,1055,1153,1156,1159,1150,149,153,154,141,145,146,147,176,138,1071,1070,672,673,649,650,174,129,130,131,134,1187,321,1158,320,627,175,304,133,646,514,515,628,632,1179,1182,319,1209,157,158,1211,1045,1041,1044,676,680,681,705] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2390,2391,2392,2394,2395,2396,2441,2443,2397,2442,2912,2571,2402,2403,2429,2400,2401,2973,2944,3303,3332,3333,3317,3419,3420,3412,2896,3304,2948,2949,3305,2415,2407,2408,2409,2426,2587,2588,2584,3421,2925,2940,2941,2918,2917,2914] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1332,3106,4262,3132,3164,4263,4264,1330,1870,1853,1871,1877,1864,1866,1297,1300,1296,1291,1856,1369,1350,4229,1351,4236,4237] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [983,1196,4203,1194,1195,4182,4183,984,1008,1009,987,4202,3184,4200,4181,3210,3211,3212,3213,3220,3221,3208,1352,1355] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2750,2756,4501,4503,2775,2785,2789,2791,2740,2747,2745,3398,2901,2905,3349,4469,2788,2811,2784] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1087,1136,2221,2222,2223,633,635,636,521,482,543,481,487,488,490,1119] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2415,2414,2407,2408,2409,2426,2588,2421,3421,3281,3308,3317,3304,3305,2402,2403] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        