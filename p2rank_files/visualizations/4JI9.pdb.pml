
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
        
        load "data/4JI9.pdb", protein
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
 
        load "data/4JI9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3526,3538,3540,3642,3531,2531,2532,2575,2579,2580,2581,2714,2524,2525,2527,2528,2530,3094,3178,3502,3645,3658,3666,3668,3659,3501,3667,3643,2729,2730,2873,3644,2536,2542,2543,2546,2567,2568,2561,2562,2563,2564,2565,2550,2553,3822,2566,2747,3535,3557,3556,3637,3098,3116,3151,3147,3144,3119,3143,3110] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2254,2539,2540,2541,2753,2756,2516,2519,2538,2189,2190,2195,2197,2491,2494,2590,1573,2739,2214,2545,2192,2493,1328,1329,1330,1560,1561,1339,1341,1343,1542,1543,1544,2193,1495,1496,1499,1528,1334,1291,1041,1018,1019,1020,1567,1566,1568,1569,1570,2229,2230,2225,2224,993,995,2253,2233,994,2512,2504,1349,2498] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [686,1230,1237,1235,1236,172,174,118,120,121,173,307,703,684,1095,1238,1131,1121,1123,117,123,124,125,161,126,128,135,136,137,138,736,737,1149,1150,740,744,771,1128,1119,712,691,709,573] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [428,429,466,1253,398,400,394,322,323,159,340,158,151,1261,146,154,156,138,143,147,1400,424,425,427,1095,1238] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1606,2014,2013,1796,2158,2154,2156,2159,2008] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1246,1239,686,671,500,467] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4013,4563,4565,4561,4562,4410,4203] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        