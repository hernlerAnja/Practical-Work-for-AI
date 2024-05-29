
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
        
        load "data/2PZR.pdb", protein
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
 
        load "data/2PZR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [174,175,176,1129,1130,1131,454,675,1209,1210,559,159,701,307,676,680,487,323,321,322,726,719,155,157,160,729,1215,1216,1217,1211,1101] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2939,2918,2936,3322,3352,2374,2376,2915,2897,3426,3351,2378,2394,2516,2892,2893,2696,2776,2946,2974,2532,2530,2531,2663,3432,3434,2393,2395,2528,3427,3428,2695] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1379,1240,1254,1377,1378,1380,1381,1252,1253,1284,1296,1373,1350,1355,1361,1369,1297,1301,1360,1359,1069,1362,1367,394,393] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2634,2532,2662,2531,3433,3434,2630,2633,3455,3456,3457,3585,3447,3448,3449,3590,3299,3337,2635,2638,3326,3606] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [396,398,1229,1230,1231,419,420,421,1232,424,400,401,399,1215,1216,1078,323,339,322,327,333,453,161,1240,1381,1238,1239] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3578,3582,3559,3570,3571,3564,3590,3587,3589,3457,3470,3471,3290,3449,2603,3513,3569,3568,3514,3469,3501,3507] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3751,3754,4275,4277,4285,3740,3741,3233,3743,3231,3232,3203,3205,4293,4278,4289,4282] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2075,2077,1537,1545,2074,2076,1534,1536,1527,1531,1542,1013,1014,1017,982,1012,1011,984,2088,2092,2081] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1468,1470,1778,1779,1479,1749,1744,1751,2591,2619,2594,1405,2587,2590,1404] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3614,3989,373,378,380,3679,3987,3988,3990,381,382,385,3960,3953,3956,410,3689] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        