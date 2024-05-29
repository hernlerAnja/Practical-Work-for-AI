
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
        
        load "data/6NZE.pdb", protein
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
 
        load "data/6NZE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2485,2121,2140,2141,2032,2033,2034,2139,2888,2889,2890,3024,2853,2867,2877,2854,3132,3167,3169,3136,2018,1985,1991,1992,1993,1995,3129,3128,3130,2905,2490,1976,1977,2540,1972,1973,1974,1978,1979,2539,2878,2556,2876,2880,3168,3378,3382,2530,2531,2906,2875,3333,2511,2123,3036,3037,3040,1996,1998,1999,2000,3138,3139,3102,2594,3371] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [992,1006,1143,1147,1159,1160,1155,1163,120,123,125,126,129,130,149,150,132,135,647,656,1023,655,995,114,994,989,993,997,1007,970,983,984,971,1265,1266,136,137,710,672,1259,1263,1294,1296,1251,1252,1253,1256,1225,1460,1295,1504,1508,1498,117,244,617,618,243,163,164,165,257,259,260,360,113,115,118,119,624,1022,620,623,597,261,602] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [1041,1042,1043,1044,1086,1088,2529,2925,2929,2933,2918,2921,2924,2937,1081,2934,2964,2954,2518,2519,2526,2528,645,1038,1106,1109,2945,2949,2950,1092,1089,1048,1054] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        