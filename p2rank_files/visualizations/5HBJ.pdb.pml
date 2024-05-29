
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
        
        load "data/5HBJ.pdb", protein
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
 
        load "data/5HBJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1398,1400,450,1393,656,1290,307,1289,862,244,245,250,894,2773,2774,2772,1395,550,655,1394,306,433,826,828,248,448,808,810,811,279,280,282,284,285,835,832,1273,1265,1266] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4205,2891,4477,4474,4126,4169,4167,4168,4468,4156,4157,4193,2855,4158,2858,2873,2874,2876,2886,2888,4118] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1252,1521,1522,880,878,883,1486,1485,1736,875,1260,1510,950] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3518,3551,3552,3560,3553,5008,3565,3567,3914,3566,4978,5004,4976,4977,3862,3867,3869,3878,3859,5026,5027,16,3913,3924] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3503,3505,60,3489,3537,3080,33,3528,3529,89,54,55,50,49,87,3509,3078,3079,3513,3531,3050] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2834,4158,4107,4112,4123,2836,2838,3670,4130,4126,4152,3365,4144,4147,4127,4156,2842,4103,4102,4104,3669] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2633,2369,1013,1014,2598,2628,2600,2370,2384,1752,2339,1015,1016,1017,1046,1012,2644] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1585,1588,1589,1603,2091,2092,2492,1628,1551,1552,2483,2484,2036,2080,2079,2477] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2065,2009,2066,1989,1994,2193,2117,2118,2146,2147,2072,2074] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4855,4856,4881,4858,3216,4396,3253,3254,4904,4901] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        