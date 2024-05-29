
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
        
        load "data/4U43.pdb", protein
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
 
        load "data/4U43.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [157,1304,1306,1305,1315,1316,170,1299,4139,4140,1284,1285,3762,152,153,1117,1118,1119,1120,1258,1276,1277,1105,1476,1473,1475,1108,154,3764,145,1137,1280,1278,171,1313,4155,1391,1457,1308,1322,1364,1366] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [191,192,292,137,138,1250,1255,1256,305,307,1248,1249,1257,1251,731,732,734,1252,755,758,750,1172,139,1149,133,134,1145,1157,1173,771,774,778,802,151,135,136,752,754,764] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2653,3121,3123,3126,3141,3142,3129,3135,3544,3621,3543,2670,2669,3639,2551,2552,2553,2547,2550,3620,3516,3528,3173] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1680,3671,3742,3757,1682,3766,1688,3773,3774,1695,1697,1681,3849,3915,3490,3696,3476,3670,3777,3824,3780,3930,3932,3934,3822] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3723,3724,3752,3753,3725,1342,1340,1357,1654,794,1623,1356,1597,1635,1655,1628,1634,1147,1150,793,1136,1137,1146,148,149,3721,3722,3763] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1716,1723,3864,3870,1413,1412,4222,1429,1693,1722,1729,3877,3878,3879,3867,3872,1421,1406,4181,1401,1718,1719,1721,4179,1717,1725,1754,1768,1766,1770,4212] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3471,3488,3491,3527,3529,3694,3670,3466,3693,3528,3686,3620,3650,3685,3687,2670,3668] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1255,1256,307,1248,1249,1257,1251,731,732,733,734,1252,1268,465,432] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3058,3060,3039,3007,3032,2691,2692,2693,201,3040,111,116,2511,2504,2507,2509,2502,104,103] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2506,688,2499,2500,2501,2502,636,618,620,689,2514,2521,2546,2543,660,643,659,661,2562,2564,332,331,687,668] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3732,3733,3734,3736,160,3760,1304,1303,1301,1302,173,162,165,168,3692,3693,3731,3758,3774,3695,2525] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3139,3174,3180,4720,3175,4722,3205,4755,3202,4728] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        