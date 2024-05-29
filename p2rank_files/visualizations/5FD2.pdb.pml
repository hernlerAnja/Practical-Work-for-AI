
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
        
        load "data/5FD2.pdb", protein
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
 
        load "data/5FD2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [160,275,276,274,518,519,522,443,442,624,177,272,176,178,258,259,260,531,535,637,638,623,131,1084,1086,1087,125,128,659,660,1085,521,665,666,682,680,1067,1163,1166,1170,1171,1172,1056,1057,1183,1174,1184,1185,1186,691,692] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2566,2580,2581,2585,2216,2310,3120,3122,3102,2469,3025,3105,3106,3103,3109,3110,3111,2466,2468,2465,2298,2601,2602,2603,2605,2214,3021,3023,2622,2623,2625,2608,3024,3026,3022,2393,2394,3123,3124,3125,2567,2416,2482,2215,2306,2297,2563,2564,3020,2995,2634,2997,2998,2999,3006] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3885,3917,3948,3918,3940,3890,3892,1996,1997,1909,1910,1911,1883,1852,1873,1875,1876,1877,1882,3894,3893,1888,2027,2029,2034,2060,1886,2059,2028] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [571,582,593,594,56,59,63,97,83,284,81,80,79,598,283] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1195,1214,153,292,307,1252,154,151,157,290,293,301,1246,1217,1223,1221] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        