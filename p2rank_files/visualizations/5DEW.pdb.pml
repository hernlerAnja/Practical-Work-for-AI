
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
        
        load "data/5DEW.pdb", protein
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
 
        load "data/5DEW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2536,2537,3032,3029,3023,3025,2630,2491,3004,3005,3007,2990,2991,2643,2875,3011,2519,2645,2663,2646,2647,2741,2743,2744,2776,2992,3047,3476,3484,3487,2770,2800,3470,3474,3492,3494,2873,2874,3464,2868,2801,2767,3406,3475,3477,3480,3483,3405,3378,3054] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1224,1230,1155,1156,1225,1232,516,1226,1227,368,365,363,364,622,754,755,761,548,741,546,756,757,254,399,381,382,378,374,490,514,515,517,491,742,523,272,270,226,271,773,775,782,797,798,1128] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3566,3930,1728,1729,3952,3953,1715,1721,1722,1724,3658,3676,3677,3656,1723,3590,3591,3625,3626,3514,3515,3513,3522,3526,3528,3560,3565,3567,3548] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [253,254,399,442,382,1246,479,481,485,486,490,480,517,491,1232,448,446,3572,3573,483,1248,1258,3559,1257,1259,1256] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [456,458,483,484,1258,1375,1364,3915,3922,3573,3563,3921,1250,1251,1259,1252,1256,1374,1376,1379] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3939,3960,3961,3962,3963,3964,3965,1476,1367,3937,1756,1757,1750,1751,1762,1764,1788,1795,1464,1469,1368,1754,1461,1752,1459] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1031,1515,1516,1517,1028,1029,1287,2059,2061,2066,2074,2070,2065,1523,1525] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2029,1447,1522,1523,1524,1525,2020,1507,1333,1334,1508,1510,1517,1518] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        