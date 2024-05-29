
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
        
        load "data/4ZY5.pdb", protein
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
 
        load "data/4ZY5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2401,2549,2395,2421,2419,2420,2642,2547,2548,2565,2641,2673,3381,3383,3437,3424,3431,3384,3387,3436,2666,2665,2663,2664,2634,2608,3376,3377,3382,2773,3305,3374,3375,2911,2439,2532,2923,2925,2394,2437,2438,2393,2891,2907,2906,2892,2697,2698,2770,2772,2696,2947,2954,3278,3306,2392,2929,2932,3396,3392,3394] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [233,234,235,238,239,253,361,362,363,1150,252,359,675,676,677,456,1166,223,211,212,205,3505,1153,1177,3506,3507,1151,1152,724,717,720,1075,1076,346,693,695,702,681,1144,1145,674,208,206,1037,1048,1049,1059,748,392,420,429,385,422,3521,3522,3502,1038] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3514,3515,3467,3468,3513,3509,3516,3879,3465,3626,3625,3453,3457,3460,3461,3477,3479,1640,1310,1311,3473,3499,3539,3540,3574,3575,3902,3901,3239,3428,3441,3443,3444,3448,3237,3607,3900,1649,3600,3602,3651,3653,1639] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [354,648,650,277,121,122,351,353,172,175,182,184,185,269,167,372,258,260,259,261,263,653,132,131,133] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [422,3518,3524,423,394,397,1176,1170,1178,1291,1292,3512,3871,3864] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1285,1286,1377,1382,1394,1673,1670,1671,1680,1682,1674,1675,1678,1387,1706,1668,1669,1379,3888,3909,3910,3911,3912,3913,3914] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3178,3177,3179,3185,4205,4209,3181,4203,4204,4210,3671,3672,3663,3664,3665,3152,4214,3673,3674] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1984,1988,949,951,1977,1978,1979,1431,1433,1436,1441] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1434,1435,1243,1245,1426,1977,1938,1441,1442,1443,1444,1253,1254,1425] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        