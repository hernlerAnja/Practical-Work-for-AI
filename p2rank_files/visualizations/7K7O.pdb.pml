
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
        
        load "data/7K7O.pdb", protein
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
 
        load "data/7K7O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1027,742,1540,704,1025,1026,1028,1029,136,1300,144,146,151,1568,1571,1333,1289,1570,687,688,124,125,130,183,184,286,135,143,169,185,133,271,127,128,650,288,289,1038,1177,1181,1185,1003,1039,1193,1188,1189,1194,1054,679,1024,1055,1021,272,634,652,656,655,287,1002,1015,1016,1331,1502,1332] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [3024,2988,2989,3002,3012,3177,3040,2274,3173,3165,3169,3176,3181,3182,2256,2272,2273,2619,3314,2165,2271,2164,2150,2166,2117,2124,2127,2130,3316,3279,3283,3284,3286,2131,2132,3274,2114,3185,3010,3041,2673,2672,2689,3011,3013,2640,2655,2656,2663,2664,2257,2637,3315,3480,2634,2635,2727,3014,3015,3553,3550,2108,2105,2106,2109] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [3066,3110,3059,3061,3070,3074,3101,1075,1077,3081,2661,2662,1074,3072] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [664,677,1084,1086,676,2659,2661,2651,1067,2647,2654,2656,2635] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        