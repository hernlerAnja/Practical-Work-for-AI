
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
        
        load "data/3BUO.pdb", protein
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
 
        load "data/3BUO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2038,2524,4030,2522,4032,3997,3998,4009,4002,4006,4027,4028,4029,4004,4041,3996,4070,4072,4083,1920,1921,2011,1894,2511,4087,4089,4082,4086,1892] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3625,4176,3624,4151,4177,4154,4728,4731,4510,4499,4512,4149,4520,4522,4521,4523,4524,4515,4528,4727,3588,3590,4534,4735,4734,4739,4742,4738] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4598,1411,4479,5098,5109,5111,1415,1419,1422,1440,1441,1442,1443,1445,1417,1454,4625,1409,1500,1502,1410,1485,1495,1496,1499,1483,4507,4508,4481] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1936,1001,1003,1037,1038,2141,2144,2137,2148,1589,1562,1564,1590,1567,1923,1925,1912,1933,1935,1937,1934,1947,1941,2140,2155] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4741,4743,2950,2951,4745,4747,4750,2964,3003,2992,3026,2611,2591,2588,4767,4768,3643,3646,3615,3642,3613,3638,3641,4766,3670,3672,2960] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [335,343,344,935,936,896,897,967,971,963,965,972,1978,1981,1969,339,342,1972,371,995,391,369,374,1951,1952] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3482,3520,2922,3483,3484,3522,3523,2930,2931,4565,4556,4559,2929,2956,2926,2961,4538,3559,4568,3554,3558,3550,3552,2958,4539,3582,2978,3532,3533] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2154,363,2158,2160,2163,416,405,439,373,364,1,4,377,1056,1026,1051,1054,1055,1059,2180,2181,2179,1083,1085,1028] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4144,4145,4146,4147,4149,4153,1510,4498,4510,4513,4499,4512,3568,4520,4522,4151,4154,1503,1501,1502,1530,1532] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1559,1560,1926,4097,1557,1558,1923,1925,1566,1911,1912,4088,4089,4090,4117,981,1933,4119,1935,1562,1564,1567] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1181,1183,1087,1089,1187,1208,1058,1059,1662,1664,2181,1700,2179,1698,1727,2178,1692,1188] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4087,4088,4089,4090,4095,4117,1926,1922,1909,1911,1921] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3768,3674,3676,3770,3795,4279,4314,4285,4287,4765,4766,4768,3645,3646,4249,4251,3774,3775,3769] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1503,1500,1501,1502,1530,4496,4498,4509,4513,1508,4508] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        