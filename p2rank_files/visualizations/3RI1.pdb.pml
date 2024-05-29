
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
        
        load "data/3RI1.pdb", protein
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
 
        load "data/3RI1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [760,1138,1166,1167,1168,1245,1246,1244,726,735,593,714,1153,1252,1249,1250,1147,169,763,165,166,752,753,756,161,164,163,787,361,1251,187,357,359,212,213,214,710,345,485,486,488,694,520,521,709,160,188,186,195,196,191] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2452,2577,2398,2451,2575,2935,2936,2710,3463,3464,3467,3468,3470,3462,2819,2742,2743,2920,2563,2401,2958,2961,3385,3386,2399,2402,2424,2426,2433,2434,3469,2578,2579,2709,2403,2404,2979,2989,2982,3014,3013,2966,2412,2429,2407,3371,3356,3365] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [189,190,191,192,193,194,2419,2428,2430,2432,2427,1267,1266,1268,1273,1274,1275,361,1251,187,1265,487,181,185,188,186,384,414,3650,435,436,458,455,456,398,400,402,1115,1141,1142,1153,1252,2619,2429,2431,401,3360,1411,1412,1414,2632,1432,1433,2616,2657,2658,2424,2425,2426,3333,2600,2602,2603,2620,3470] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2425,2426,3469,3333,3491,3492,3493,2676,2678,2709,3483,3484,3485,2680,2579,2675,2677,2681,3468,3470,3629,3650,400,2428,2430,2432,2427,2431,401,3359,3360,3371,2429] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3271,3784,3798,4334,4330,3269,4327,4329,3270,4341,4345,3243,3787,3795] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1412,1413,1414,1106,1408,1396,1397,1332,1336,1331,1385,1390,1394,1404,1395,1288,1289,1275] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1569,1049,1019,2108,2109,2115,2122,2126,1017,1021,1566,2110,1580] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3543,3550,3630,3631,3603,3608,3614,3615,3626,3612,3613,3506,3507,3549,3537,3493,3324] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2619,780,1139,1141,1143,778,1681,1729,1730,2609,2612,2613,2617,1461] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        