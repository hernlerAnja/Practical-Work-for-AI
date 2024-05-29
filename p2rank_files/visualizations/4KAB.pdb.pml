
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
        
        load "data/4KAB.pdb", protein
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
 
        load "data/4KAB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2780,3141,3150,3151,3152,3169,3170,3171,3239,3241,3245,3247,2367,2503,2366,3146,3155,3276,3277,2241,2350,2731,2753,2772,2775,2186,2750,2748,2240,2242,2783,2182,2188,2189,2191,2201,2204,2194,2611] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1125,1127,709,149,728,145,203,204,205,151,152,1126,1195,1196,323,1201,1203,320,321,322,164,685,687,306,568,692,706,704,157,167,154,736,1097,1106,1111] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3999,1368,1369,1021,1046,1025,1022,1024,1358,1361,1363,1364,1362,1374,1860,1906,3068,3070,3066,1863,1864,3454,3455,3457,3461,3462,3456,3467,3953,3063,3064,3065,1867] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3247,2367,2501,2502,2366,2461,3276,3277,3261,3262,3263,2201,2204,2219,2221,2227,2371] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3497,3532,3335,3500,3639,3641,3779,3780,3774,3732,3916,3917,3918,3919] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [322,458,164,176,180,182,431,327,190,323,457,1203,205,184,1208,455,165,167,171,174] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1404,1242,1546,1548,1687,1407,1639,1439,1676,1671] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        