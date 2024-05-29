
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
        
        load "data/6NZH.pdb", protein
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
 
        load "data/6NZH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2156,2155,2172,2173,2063,2064,2065,2900,2901,2902,2891,3179,3177,2010,2016,2023,3137,2929,2930,2899,2913,2914,2517,2007,2008,2003,2004,2005,2570,2538,2561,2562,2571,2531,2533,2877,2878,3040,3036,2171,3032,3044,3045,2049,2272,2026,2029,3048,2030,2031,3142,3146,3147,3148] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [980,981,957,993,994,970,971,958,1144,1252,126,133,134,136,139,140,141,660,976,1447,984,258,175,159,1152,260,1132,1136,1140,1148,1149,1283,1250,1241,1248,1251,1285] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [643,644,114,115,119,120,173,174,175,123,117,246,605,606,245,1009,259,260,1132,612,611,635,1010,590,608,981,993,126,133,979,982] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [2891,3178,3179,3177,2900,2901,3137,2890,2892,2896,3372,2587,3383,2904,3334,3142,3146,2877] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        