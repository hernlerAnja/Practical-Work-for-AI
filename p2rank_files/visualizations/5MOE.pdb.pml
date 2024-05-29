
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
        
        load "data/5MOE.pdb", protein
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
 
        load "data/5MOE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1875,1882,1883,1313,1024,1133,1163,1338,1339,1337,1312,982,984,1884,1049,1048,978,1010,1013,980,981,1022,1356,1353,977,965,1119,1122,1314,1942,1851] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4097,4096,3747,4123,3746,4098,4142,4637,3905,3799,3908,3751,3874,3918,4671,3808,4669,3834,3835,3767,3769,4720,3764,4109,4099,3872] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4105,4133,4134,4234,4239,4240,4242,4106,4107,4109,3172,3183,3162,3163,3169,3184,3347,3704,3705,3567,3569,3702,3725,3729,3731,4231,4233,4235,4236,4132,3728,3348,3349,3332,3345,3229,3227,3228,3333,3164,3166,3167,3700,3703] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [546,1445,1447,1448,1449,1319,1332,389,442,443,382,383,384,386,1450,1453,1455,427,561,562,563,1454,1456,781,914,917,919,916,918,782,783,923,945,1346,547,939,1347,1348,960,378,380,381,376,377,958,942] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3054,3056,3429,3431,3672,3673,3438,3401,3404,3405,3406,3403,3440,3441,3439,3620,3653,3656,746,3051,3052,736,737,745,3619,790,739,740,741,3621,742,3053,3033,3432,3379] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3460,3424,3348,3349,3430,3423,3365,4241,4242,3196,3197,3198,3199,3200,3203] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3107,3130,3131,3626,3627,3629,3085,3086,3628,3664,3615,3612,3616,3679,3108,3132,3339,3083,3082,3355,3356,3357,3667] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1501,187,189,1529,180,1495,208,1496,218,1548,1527,192,197] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4548,4554,4566,4589,5441,5447,2845,2848,5450,5452,2841,2846,2858,4012] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2678,2683,2661,2630,2640,65,48,55,2684,1762,1776,1777,1780,1768,1226,1803] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        