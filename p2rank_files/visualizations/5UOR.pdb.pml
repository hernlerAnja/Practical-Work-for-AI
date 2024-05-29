
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
        
        load "data/5UOR.pdb", protein
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
 
        load "data/5UOR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1575,1598,1596,1597,1599,3705,3707,3736,1577,1682,1703,3680,1568,1569,1579,1696,1631,1632,1659,3399,3698,3407,1678,1572,1603,1639,3700,3727,3728,3730,3729,3675] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3227,3228,3231,3232,3233,3225,3226,2696,2564,2195,2197,2196,2138,2139,2141,2143,2144,2695,2299,3116,2150,3127,2715,2718,2719,2142,2741,2742,2761,2734,2737,3143,3142,2157,2315,2314,2316] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1114,193,195,194,148,135,136,141,142,1225,1229,1223,1224,561,1140,1141,713,716,139,297,709,137,140,717,562,698,314,693,694,739,732,735,740] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1360,1365,1459,1462,1463,1638,1576,1612,1329,1361,1364,1636,1641,1643,1640,1391,1350,1327,1328,1321,1665,1664,1675,1672,1673,1674,1679] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1538,1539,1540,1579,1582,1583,1699,1700,1701,1718,1599,3707,1535,1714,841,1717,3709,3708,3737] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1420,1015,1017,1422,1424,1027,1418,1425,1426,1429,1419,1448,1900,1903,1904,1905] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2885,2815,2918,2920,2908,2836,2861,2886,2809,2810,2812,2813,3164,3163] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [883,884,859,834,807,809,808,1159,1161,810,811,813,1164,1162,917,918,1184] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3564,3602,3603,3604,3109,2755,3354,3113,2786,3120,3342,3352,3118,3106] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        