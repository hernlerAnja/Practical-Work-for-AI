
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
        
        load "data/2G01.pdb", protein
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
 
        load "data/2G01.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1749,1751,1758,1760,4693,4919,4921,4682,4684,1754,1371,1372,4419,4316,4421,4680,4301,4315,4317,4318,4289,1959,1960,1986,1988,4322,1937,1938,1953,1951,4893,4433,4869,4428,4434,4677,4387,4715,4716,1383,1384,1747,1488,1491,1744,1782,1366,1370,1365,1361,1494,1501,1502,1500,1939,1368,1374,4871,1389,4884,4886] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1178,1270,1271,1274,1177,789,1266,1268,608,610,794,1169,833,834,1168,1192,808,812,1139,1140,1409,1156,1157,1393,835,829,824,825,818,220,1396,1276,353,1277,790,227,228,237,194,195,197,238,239,190,192,336,805,806,811,211,199,200,203,204,207,224,221,223,351,352,216,212,1138,1300] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4200,4201,3178,3179,3180,3133,3722,3723,3543,3277,4109,4110,4199,4203,4204,4202,3477,3140,3141,3129,4089,4090,4102,4101,4111,3144,3145,4206,3292,3294,3447,3478,4125,4126,3741,3746,3739,3727,3734,3769,3191,3752] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1360,1364,1349,1358,1363,2696,2671,1352,1354,1484,1346,1344,1345,2673,429,432,434,1377,1129,1130,1313,1314,2663,456,458,2669,495,1526,1527,1524,467,431] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4302,4306,3398,3399,3436,4298,4290,4291,4294,4295,4063,4246,4247,5608,3375,3407,3408,3405,4278,4460,4275,4276,4459,4227,4228,4229] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1759,4692,1761,1762,1765,4956,1739,4920,4955,1798,1799,1987,1989,2023,4695,4700,4730,4731,4732] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1695,1681,1841,2117,1698,1663,1664,1687,2157,2113] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4632,4643,4774,4770,5061,5049,5050,4631] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [5492,5494,5491,3964,3942,3519] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        