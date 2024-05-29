
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
        
        load "data/5UHN.pdb", protein
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
 
        load "data/5UHN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1159,1160,1131,751,755,758,731,1161,713,727,156,748,730,349,350,481,514,590,513,1244,1237,1238,1245,163,165,708,709,206,334,159,207,164,157,205,348,1140,1141] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2377,2378,2383,2385,2426,2427,2380,2428,2573,2574,2575,2706,3334,3446,3447,3448,3441,2983,3010,2972,2973,3364,2976,2980,2933,2934,3363,2739,2815,2918,2738,2938,2952,2559,2955,3440,3362,2386,2384] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [187,1109,448,451,1267,449,1268,1402,1266,1244,1145,350,1257,1258,480,1259,446,447,1134,1135,1416,2612,1401,2616] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3348,3448,3442,3445,3312,3462,3469,3470,3471,3337,3461,3460,2673,2671,2672,2705,2575,387,391,3338,403,3526,3527,3511,3512,2408,2676,2674] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1408,1409,1455,1480,1099,1531,1534,1481,1512,1336,1338,1510,1511,1513,2637,1377,1378,1395,1396,1398,1516,1268,1402,1358,1361,1359,1281,1282,1340] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [714,1223,1224,715,565,566,567,718,1175,1173,1174,1191,596,598,579,552,617] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1546,1037,1038,1039,1555,1550,1553,2099,1007,1011,1009,2095,2106,2110,1564,2094,2092] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4131,3704,3705,3707,4129,3985,3978,3973,3841,3842,3983] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1732,1594,2019,2020,1595,1597,1873,1875,2021,1731,1863,1868,2022] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        