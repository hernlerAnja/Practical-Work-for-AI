
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
        
        load "data/3SRV.pdb", protein
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
 
        load "data/3SRV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [660,668,669,1024,1054,121,636,161,118,124,125,145,1038,119,123,635,286,162,1053,1137,1146,619,1144,1145,163,301,640,637] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3227,2813,2833,3226,2841,2842,2809,3211,3197,3316,2292,2295,2318,2320,2289,2338,2284,2286,2337,2287,2282,2283,2796,2461,2791,2792,3308,3315] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2538,2535,2316,2314,2533,2534,3338,3337,3339,3329,3330,3331,3312,3328,3313,3314,3315,2477,2568,3175,2318,2302,2306,2299,3480,3201,3202,3211,3174] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [302,1002,139,141,136,1167,1168,1169,1143,1145,1141,1142,1160,1161,366,361,362,395,1158,1159,143] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [4138,3561,4130,1084,3596,3598,3558,3593,3594,3595,3597,3620,1081,3557,3584,3585,3586,4120,4122,4118,657,658,4125,4115] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [85,179,181,4083,4110,636,122,84,100,101,645,4128,649,4111,4124,103,4151,4152,104,105,4155] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [239,240,243,3959,3962,3963,3966,3969,3743,3819,3851,3833,3818,3830,250,3907,3906] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [685,1600,1638,1641,1642,1649,1648,1652,1653,1654,1655,1663,1027,1029,1377,1025,1026,1376] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        