
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
        
        load "data/7A49.pdb", protein
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
 
        load "data/7A49.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [379,373,439,956,438,1342,1343,1344,941,380,376,543,1315,1319,1320,1321,972,1444,384,385,393,394,557,913,915,542,911,909,910,777,779,541,423,558,1449,1450,1452,1446,1453,671,1441,1443,1445] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1468,1469,1476,1478,1288,558,559,670,1451,1452,410,411,412,413,414,415,598,409,579,572,574,575,630,597,629,1470,397,401,402,406,385,394,1303,1304,1317,1318,1320,1328,1477,1603,3079,3080,1602,1605,1606,1610] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1302,1304,1316,1317,1318,1319,1320,1321,1310,1311,3078,3079,3080,1609,1610,1642,1644,1629,1860,3063,3084,990,991,992,1913,1916,3068,1921,1631,1859] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1632,1923,1952,1954,1955,3625,1631,2038,1950,1911,1908,1920,1906,1907,3075,3616,3083,3084,3095,3096,3099,3131,3298,3311,3313,3312,3140,3142,3321,3617] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3207,4262,4162,3194,3256,3361,3759,3257,3360,3373,3375,3730,3732,3733,3727,3597,3737,3376,3377,4263,4264,4270,4259,4261] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3394,3397,3398,3415,3399,3400,3376,3377,3488,4269,4270,4286,4287,4288,4294,4296,4106,3375,3393,3381,3240,3203,3237,3401,3402,3257] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1985,1971,1983,1984,1974,1978,1975,1993,1995,3061,3054,3058,3506,2981,2982,2983,2988,2994,2991,3056,3527,3530,3538,1977,3525,3526] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1491,1544,1545,1492,1523,1525,193,191,213,212,184,201,220,221,223] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3459,3468,3469,3065,3069,3071,3089,3092,3068,3087,3648,3649,3430,3431,404,405,3700,3701,3460] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3030,4309,4363,4341,4343,4362,3031,3041,3040,3002,3009,3011] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        