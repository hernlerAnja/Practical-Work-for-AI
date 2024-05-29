
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
        
        load "data/4BCJ.pdb", protein
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
 
        load "data/4BCJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [338,1243,1244,1246,192,194,1162,754,760,484,1247,591,1240,592,725,726,731,214,160,161,212,213,154,155,157,159,156,158,336,337,321,728,730,330,334,1238,1239,1147,783,1139,1140,1163,768,769,780,781,782] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [419,3541,3519,370,3518,391,3566,3572,3573,3544,423,425,368,369,679,677,678,680,676,366,3605,3606,691,690,651,657,683,658] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4092,4134,4154,4159,4146,4149,4068,4099,4094,4101,4246,4216,4218,4157,4228,4071,4073,4074,4316,4317,4349] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3645,3667,3018,3019,2979,2569,3966,2520,2567,2548,3657,3662,3668,4004,4010,4011,3669,3673,2512,3672,2980,3967] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2498,2506,2507,2492,2491,1170,1171,807,870,851,775,772,774] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2624,2754,3951,2718,3945,2597,3960,3985,3950,3939,3942,4392,3944,2753,3933,2752,2716,2717,2620,2622,2626,2621] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3895,3897,3905,3904,4509,3873,3875,4511,4481,2844,2921,2841,2842,2843,3927,3929,4483,2818] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1514,1529,1530,1535,1511,1512,2297,2303,2290,1513,1899,1902,1951,1953,1908,1914,1915,1916,1473,1474,2296,1533] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1140,795,796,1126,1440,1442,1135,1650,1702,1703,793,1430] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3825,3827,3796,3854,4063,3778,3779,3756,3751] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        