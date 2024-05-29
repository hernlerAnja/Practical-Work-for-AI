
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
        
        load "data/3TJC.pdb", protein
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
 
        load "data/3TJC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3529,2862,3648,3649,3631,3632,3633,3634,3647,2718,2719,2556,2535,2543,2547,2554,2555,2793,2795,2790,2550,2552,2736,3625,3526,3626,2969,3080,3083,3655,3491,3656,3657,3803,3806,3808,3811,2542,3805,2532,2557,2512,2518,2519,2520,2522,2524,2531,3545,2513,3133,3136,3140,3546,2570,3105,3108,2569,2703,3087,2514,2516,2517,2568,3519,3520,2541,3515,3141,3123,3167,3672,3673,3776,3779,3782,3481,3653,3802,2821,2823,2820] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [771,116,117,123,124,126,118,172,174,1238,135,136,1237,322,323,1119,1128,1133,1235,1236,1230,138,143,147,149,158,120,173,307,703,687,705,121,707,712,736,737,1148,1149,1150,709,1129,1130,740,744,745] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3962,3963,3964,4621,4626,4631,4629,4630,4642,4649,4646,3969,3956,3957,3730,3725,3726,3378,3386,3414,3413,3388,3415,4638,4586,4597,4588,2363,4610] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [138,143,147,149,151,154,156,158,340,398,400,1398,1400,1396,1397,424,427,1407,1406,146,1251,1252,1253,1261,322,323,429,394,428,466] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3963,4621,4625,4626,883,4629,4630,2359,4649,4650,4660,2357,2360,2361,3969,4586,4593,4597,871,872,2064,866,881,870,2363,862,864,4610] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [762,1764,1464,1465,1770,761,1671,1122,1123,1124,1753,1756,1771] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1567,2235,1560,1569,1566,1568,1329,1330,1334,994,1291,1019,1561,1570,1573,2230,2233] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2048,1750,1751,1742,4387,4385,4386,4388,4574,4526,1725,1726,1727,4560,4564,4565,4566,4567] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [197,81,63,332,661,663,182,38,66,64] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4190,4192,4552,4553,4554,4398,4550,4551,3999,4002,4363,4032] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        