
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
        
        load "data/5ZN0.pdb", protein
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
 
        load "data/5ZN0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2992,852,785,796,767,768,824,829,735,742,744,745,754,2725,2968,2969,2994,1891,2756,2757,2758,1601,1603,1947,1909,2705,2708,2718,797,2684,2685,795,2704,736,850,851,721,1067,1068,1893,1069,719,722,1980,1939,718,2001,2004,2009,1974,1984,1985,2990,807,2642,3040,3039,805,810,1115,1892] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1346,2618,3041,3252,3223,3230,3231,808,3070,3072,3226,1272,1273,3222,3179,3184,1215,806,1214,1228,1280,1281,1294] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3305,3306,2718,2685,3323,795,3343,3345,3346,3348,3319,2692,3366,3367,2709,2023,2055,3932,3811,3812,3929] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4880,4882,4884,4854,4212,4226,4228,4766,4857,4153,4210,4209,4235,4855,3908,3923,3907,3957,4005,4156,3998,4158,4154] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1728,1729,1250,1730,477,1325,1322,1323,1335,476,1235,1261,1232,1252,1253,1300,1237,1303,1302,1831] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3130,3172,3180,3131,3132,3141,353,360,362,3179,3127,3128,3171,3129,3138,3170,3072,3073,1272,397,398,401,418,381,376] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [5291,5338,5343,4304,4306,4309,5295,4363,5247,4744,4307,4308,4310,5278,5248,5249,5261,5337,4444,5294,4358,4359,4360,4369,4370,4428,4430] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1124,1737,566,1738,1763,1764,637,1121,835,836,837,872,871,1123,1779,1782] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4070,4072,4074,4572,4544,4541,3439,3499,3501,3505,3507,3457,3458,3238,3254,4063] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2371,2775,2293,2101,2103,3825,3826] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        