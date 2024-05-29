
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
        
        load "data/4QPA.pdb", protein
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
 
        load "data/4QPA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [150,153,157,158,168,1247,1248,1249,1250,1150,782,1141,775,1166,1167,1241,1242,755,771,770,149,136,137,138,186,187,130,131,188,134,135,811,754,769,317,448,300,302,303,304,167,420,733,730,738,287,183,410,1263,408,810] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3884,3986,3987,3990,3991,3993,3909,3910,3985,3043,2926,2927,3039,3041,3476,3026,3893,3992,2892,2895,2896,2905,2907,3060,3151,3152,3153,3525,3553,2875,2876,3554,2874,2882,3307,3191,3192,4006,3149,3150,3158,3159,3163,3505,3512,3513,3514,3497,3498,3492,3309] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1743,1744,1766,1769,1760,1761,1763,1771,3714,3945,3292,3293,3944,3284,3285,1902,1910,3712,3672,3674,3704,3738,3705,5171,5173,5174,1734,5176,5164,5219,5222,5201,3739,3740,5218,5197,5198,5228] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3939,1448,1485,1749,1750,1751,1753,1754,1755,1503,1475,1481,1482,1483,1502,1355,3509,1353,3922,3928,3931,3933,3934,1348,1349,1350,1351,1359,1366,1478,1376,1389,3644,3648,3595,3940,1898] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [153,154,156,157,164,166,168,1248,1249,1250,4893,167,3602,3604,383,384,385,386,387,321,1380,1272,410,412,1271,408,1263] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1883,1884,2197,2199,1866,1868,1859,1860,1941,1789,1822,1788,1942,1945,1494,1495] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4265,4215,4264,5023,5024,5033,5034,4636,4661,4263,4250,4251,4660,4677] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3633,3634,3635,1425,1424,1426,799,801,797,1411,1420,1421,1422,1423,1436,1438,1402,1128,1729] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1426,799,1647,801,1138,1142,1143,797,1436,1438,1402,1126,1127,1128,1137] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [925,2370,926,928,929,931,2366,2368,905,1203,888] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3540,3542,3544,3886,3579,4172,4174,4442,4184,4186,3873,3871,3880,3869,4395] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [542,997,929,931,2366,2368,2412,2388,2391,2409,995,996,961,962,2361,2363] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        