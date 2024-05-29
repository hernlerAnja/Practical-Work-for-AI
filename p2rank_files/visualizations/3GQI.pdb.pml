
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
        
        load "data/3GQI.pdb", protein
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
 
        load "data/3GQI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [170,171,176,177,178,226,227,801,1269,1375,1376,1377,1299,1298,1278,1283,1380,1381,1383,773,774,173,376,752,770,748,764,766,390,392,554,555,522,791,828] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [199,200,192,197,466,468,1396,1397,1398,486,488,492,489,491,1405,1406,391,498,392,408,212,396,209,210,211,521,465,181,182,188,189,1272,1273,1246,1283,1382,1383,1247] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2994,2326,2977,2979,1154,2995,2292,2299,2302,2828,2975,2984,2829,2988,3005,3014,3067,3068,2325,2324,1131,1132] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1335,1336,1337,1338,2555,998,1005,1085,1029,1055,1057,1056,1058,1007,2554,1326,1111,1334,2787,2788,2790,2791,2792,1079,1050,1047,2817] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2654,2655,3378,2653,3386,3710,3851,3852,3853,3854,3951,3945,3954,3379,3376,3374,3377,3401,3402,3728,3729,3411,3706,3711] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2325,2810,2960,2357,2956,2409,2412,2424,2958,2980,3072,2405,2408,2356,2390,2979] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1704,1178,1179,2247,2249,2250,1712,1152,2244,2248,2261,2265,1180,1702,1699,1700,1707,1708,1701] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2175,2176,1748,1883,2174,2004,2012,2017,2173,2172] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        