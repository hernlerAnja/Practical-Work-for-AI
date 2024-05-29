
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
        
        load "data/3ZEW.pdb", protein
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
 
        load "data/3ZEW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3085,3086,3055,2192,2710,2707,2242,2344,2345,2412,2438,2340,2243,2201,2204,2208,2213,2220,2540,2538,2659,2660,2684,2681,2331,2664,2187,2189,2190,2185,2186,2191,2676,2678,2680,3158,3157,3159,3160,2539,2439,3163,3064,3069,3164,3165,3166,2437] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [153,154,275,276,277,112,118,274,104,105,106,107,102,103,109,110,261,598,612,610,593,641,644,618,614,373,1101,1106,1107,1108,1109,473,472,594,1028,1012,998,1029,648,474,114,115] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1375,1376,1371,1377,1378,1381,1368,905,903,1188,1186,3848,928,1165,904,924,1919,1922,1923,1929,1945,1946,1369,3922,1924,3847,3853,3923,1893,3921,3887,3889,3891,1189] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1954,1955,3759,3761,3725,3977,3786,3751,3723,3726,3872,1898,3948,3918,3945,3947] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2862,2863,2864,2865,3119,2840,3131,2523,2524,3129,2893,3124,3125,3130,2887,3111] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3800,3802,3398,3510,3608,3798] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        