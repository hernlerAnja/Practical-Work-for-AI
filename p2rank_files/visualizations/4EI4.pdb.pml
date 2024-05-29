
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
        
        load "data/4EI4.pdb", protein
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
 
        load "data/4EI4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3125,3122,3123,3124,3459,2522,2505,2511,2513,2519,2520,2514,3574,2575,2573,2574,3461,3462,3473,3572,3575,3573,3488,3489,3567,2516,2517,3064,3066,3098,3091,3092,3094,3048,2706,3069,3072,3052] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3755,3772,3436,3596,3597,3598,3756,2531,2532,3759,2552,2524,2525,2556,2557,2559,3732,2788,2791,2549,2767,2769,2765,2736,2764,3728,3614,3613,3437,3473,3575,3588,3573,3590,2787,2786,3464,3574,2575,2721,2722,2798,2825,2558,2792,2793,2522,2523,2520,2521,3729] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1160,800,824,1268,795,799,1190,825,238,240,241,1189,770,765,773,791,792,781,1273,243,236,237,242,430,749,753,297,298,1275,1274,299,1174] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [445,446,534,1275,258,1274,1276,280,281,460,282,283,299,248,249,1273,246,247,476,269,273,276,263,264,265,267,1457,1460,501,502,497,500,1314,1299,1289,1291,1165,1138,1174,1298,1429,1430,1431,1433,1456,498,499,1315] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1959,1992,1967,4266,4291,4232,1931,1934,3856,3857,4258,3855,1557,1558] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1162,1164,1163,815,816,817,1807,1504,1151,1157,1503,1717,1791,1792,1804] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1128,1415,1593,1515,1516,1595,1429,1438,1466,1298] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1653,2021,2180,2176,2178,1831,1683] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3952,4475,4130,4477] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        