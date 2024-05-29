
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
        
        load "data/4RVT.pdb", protein
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
 
        load "data/4RVT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [135,136,137,191,292,192,305,307,309,1198,1199,1202,1204,687,711,717,724,705,707,708,1119,1195,1196,1197,510,1192,691,684,685,139,169,171,138,167,168,1203,165,1096,727,731,732,755] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1064,1065,1066,1067,1058,1059,1420,1071,1084,3590,1201,1048,1220,157,162,1205,1252,1253,1232,1246,1251,1228,3972,3974,3973,1227,3562,153,173,163,3589,164,309,1204,1306,1311,1313,1296,1294,1295,1263,1266,1269,1255,3980,1260,1262,3987,1422,1423] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3544,3546,3571,3578,3579,3588,1272,1303,1304,747,778,779,1570,1582,1544,1572,2595,777,1601,1287,1602,1575,1289,160,3548,3549,1094,1097,1082,1083,1093,746,1089] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3757,3759,3651,3676,3678,3760,3302,3305,3306,3834,3603,3650,3606,3644,3648,3633,3632,3315,3317,3496,3316,3519,3520,3521,3522,3594,1628,1629,3568,1634,1635,1642,3675,3742,3583] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3370,2516,2958,2977,2964,2976,2961,2978,2980,2422,2423,2424,2421,3369,3446,3447,2944,2532,2533,3464,3466,3347,3342,3354] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3314,3315,3317,3496,3347,3355,3316,3354,3297,3298,3334,3609,3603,3650,3333,3606,2532,2533,3511,3512,3513,3464,3456,3476,3444,3446,3497,3292,3600,3509,3519,3521,3522,2408,2424] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        