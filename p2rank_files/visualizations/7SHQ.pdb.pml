
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
        
        load "data/7SHQ.pdb", protein
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
 
        load "data/7SHQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4718,749,750,748,617,618,619,1282,4727,4728,4693,4710,4716,1292,1299,1301,4697,1143,1140,1138,1144,1145,1278,1284,1146,1152,1157,4667,4668,4669,4666,632,4626,4628,4629,4656,4658,5038,5039,5040,5042,724,727,730,731,614,633,333,427,314,442,4274,4290,4271,4272,623,4249,4260] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1746,1758,544,1404,1405,1406,1666,1667,1397,936,1822,899,1831,910,866,546,870,871,908,909,911,1740,1741,1742,554,555,1684,543,553,1372,792,794,907,945,1843,1834,1838,1842,1839,1841] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [772,516,1354,1351,1353,1352,1349,1350,1348,513,514,1308,191,591,1310,1132,1711,1732,1734,1318,1319,1303,1314,1317,1290,572,771,1287,756,758,1295,188,1683,1739,1742,530] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4811,130,4675,702,4810,4840,4841,4842,4834,4676,701,703,704,705,706,720,178,1327,1305,1322,4804,4704,4802,4705,1309] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [241,4020,4021,4022,637,672,242,243,680,675,676,684,631,638,608,609,627,244,712,711,468,4053,4050,643,648,4028,4023,4024] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [659,4574,4633,4539,4570,4597,4274,4276,4280,4284,4290,642,4541,4543,4544,4327,4287,4279,4629,4631,4632,634,635,4600,4603,667,4602] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1700,1485,1486,1092,1707,1093,1094,1699,1696,1697,1383,1484,4765,4789,4795,4796,4799,4790,4791,4824,4825,4801] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1142,974,975,976,1012,4726,5018,953,951,341,356,358,362,950,985,351,355] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [394,395,396,398,927,864,888,889,890,892,891,893,894,851,323,325,1181,416] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1243,1244,1264,780,1214,1216,583,779,582,480,483,485] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [962,996,997,998,1019,1598,1018,993,994,995,981,1017,1020,982,980,984,1605,2287,1593,1637] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1818,1781,1783,1637,1624,1625,1828,1829,962,961,963,994] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5006,5007,4997,4977,4951,1069,4952,1038,1102,1103,4917,4919,4943,4950,4916,4953,4915,1037,1064,1068] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        