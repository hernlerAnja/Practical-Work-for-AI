
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
        
        load "data/4PPB.pdb", protein
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
 
        load "data/4PPB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2073,2074,2017,2018,2020,2028,2032,2033,2023,2026,980,1069,1070,1077,966,995,632,633,625,628,655,570,571,572,265,580,597,592,594,2021,596,451,573,1068,993,994,600,280,281,558,575,576,574,282,380,1071,1075,1076,1078] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [162,163,2192,2191,2193,121,122,106,107,110,113,114,2505,2176,2481,2482,2483,2377,2484,2486,2487,2511,2507,2536,2905,2906,2362,2979,2980,2981,2289,2290,2291,2992,2997,2999,2982,2983,2989,2360,2373,2287,2891,2986,2988,2987,2539,2543,2544,2877] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [276,278,279,277,280,281,285,557,558,297,540,543,491,353,356,576,286,291,295,319,320,321,322,323,324,325,318,352,506,346,345,347,351,379,1076] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2230,2202,2231,2233,2235,2468,2188,2190,2191,2193,2197,137,2203,2486,2487,2469,2227,2228,2229,2290,2291,2992,2258,2982,2983,2989,2261,2987] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1969,550,1945,1946,529,533,535,536,1967,1988,1966,1984,1986,1944] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2409,33,34,35,2430,2421,77,55,75,2444,2447,2440] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3623,3621,3619,3620,3622,3185,3458,3453,3463,3215,3326,3469,3468] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1415,1274,1708,1709,1710,1711,1712,1552,1547] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        