
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
        
        load "data/8H6T.pdb", protein
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
 
        load "data/8H6T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2941,3608,1237,4514,3258,3259,2934,2938,2939,2940,1253,1254,1255,4512,3576,2942,2979,2980,3569,3562,3609,2927,428,994,970,1211,2581,3570,3568,3571,3572,1214,1223,1224,1210,1274,392,393,3246,3247,3250,1204,3613,3652,3611,1227,3642,3643,3644,3645,985,3614,3587,3615,2580,2547,1252,4513] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1164,1066,1071,1167,1156,1159,1160,1161,1059,1087,1088,699,266,435,645,646,507,508,509,644,641,642,643,651,249,671,668,664,265,92,123,146,147,148,127,89,90,95,96,679,91,93,128,129,124,126] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1438,1441,1427,1428,1429,1390,1391,1393,2191,2190,2200,1833,1836,1875,1876,1877,1842,1847] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2454,2194,2199,2453,2189,2196,2213,1475,1479,3769,3770,3755,3757,1466,3741,1473,2456,2459,2461,2463,2449] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4467,4457,4461,4462,4463,3276,1262,1263,1264,1265,4492,3267,2921,2899,1256,3274,3273,3269,3277] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4135,3671,4136,3693,3704,4106,3838,3840,4094,3839,3672,3813,4067] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3823,4506,4507,3783,3784,3799,3785,1252,4515,1448,1446,4479,4480,1237,3645] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3054,3053,3170,3172,3461,3081,3084,3486,3108,3138] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3344,3345,3346,3347,3348,3349,3373,3332,3339,3340,3300,3301,2891,2893] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        