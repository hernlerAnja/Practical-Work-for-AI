
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
        
        load "data/7AKE.pdb", protein
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
 
        load "data/7AKE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4086,3910,3911,3912,429,430,431,432,4195,4196,27,28,3927,3928,3929,4203,4207,4208,29,22,26,3945,3944,4226,4224,4225,3176,3177,3178,4085,4172,4193,3902,4239,414,2925,2926,37,38,30,39,32,3151,456,457,4212,4216,419,446,4078,2931,2933,2935,4064,4065,3940,3941,3952,3943,3085,3086,3208,2918,2921,2915,3174,3146] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [229,230,455,3152,453,225,3128,238,1357,1229,1230,1231,1240,1241,231,232,215,222,235,240,478,479,483,1371,1372,1370,1356,512,484,487,390,406,450,1199,1200,1216,1217,1488,1495,1499,1500,1198,1215,1232,1464,1478,3126,3127,1373,1377,1378,2723,2709,2711,2722,2724,2725,2726,2727,1233,2717,2718,2719,3115,3125,2728,3119,1504,1508,1809,1516,1517,1519,1521,1515,1518,1520,2733,2735,2734] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3968,3969,3551,3555,3086,3209,4057,4058,3084,2956,2957,3083,3521,3522,3940,3941,3952,3573,2935,2937,4059,4062,4065,2955,2903,2909,2915,4055,4056,3069,2905,2907,3543,3544,3540,3519] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [832,839,828,831,212,215,240,241,209,261,203,207,260,259,1354,1357,1228,1240,1349,861,1256,1257,386,388,389,390,809,373,804,805,807,1350,662,1347,1348] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3138,3142,1464,1449,1446,1448,1450,4167,1377,1378,455,3152,453,3153,457,479,446] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [412,414,415,2925,38,224,243,41,47,49,219,220,253,2920,2919,2921,2922] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4418,4427,3580,3740] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        