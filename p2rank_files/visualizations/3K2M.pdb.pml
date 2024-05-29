
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
        
        load "data/3K2M.pdb", protein
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
 
        load "data/3K2M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3000,3001,2905,2998,2287,2293,2292,2294,2291,520,521,540,541,2110,536,2280,2353,3004,3005,3014,3015,2994,2997,2990,3025,3026,2277,2278,2111,2125,2109,3019,2276,429,437,526,2925,431,2984,2978,441,440,443,461,462,463,2987,2988] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [2238,2239,2232,2235,2236,2163,3054,1303,1323,1324,3056,3053,1314,1317,1319,3052,2222,2225,1583,1309,1245,1246,2216,2185,3040,2263,2264,2143,1330,3038,3042,3046,3049,3055,2253,1592,1590] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [3025,3040,2263,2264,550,2676,2671,1331,1332,1333,2696,2628,2870,2643,2872,2873,3055,2871,2649,2644,2645,2887,2888,3039,2261,3023,2906,2697,548,549,2905] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [2238,2239,1478,1850,1314,1317,1329,1319,1325,1475,1324,2263,2264,2143,2144,1330] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        