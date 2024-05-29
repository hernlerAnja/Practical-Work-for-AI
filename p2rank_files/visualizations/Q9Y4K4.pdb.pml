
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
        
        load "data/Q9Y4K4.pdb", protein
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
 
        load "data/Q9Y4K4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [222,224,226,227,1149,1140,1141,217,824,213,800,825,791,792,793,795,798,1132,1384,1386,1393,246,1303,1383,1114,1130,1131,1392,1111,1113,1115,1101,230,236,237,244,248,267,378,381,382,383,754,755,1245,1246,1247,1238,212,215,266,1164,1165,366,760,777,781,786,214,774,776,772,1273,1275,1276,1278,5163,1709,5165,817,1710,4803,1426,816,5155,5138,5141,5154,5164] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2780,5773,5774,5343,5344,5758,5759,6444,6445,6126,6129,6131,6440,6446,4002,6437,5746,5757,6427,6432,4931,4365,4369,4923,4377,4928,5330,5345,4356,3995,2798,2802,2803,2805,2778,2792,2797,6451,6453,6447,6449,6452,2796,5777,5778,4388,4390,4935,4944,2794,2749,2757,6130,2779] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4302,4325,4295,4324,4299,2494,4317,4318,4530,4847,4333,4336,4848,4849,2451,2453,2455,4692,4693,4694,2508,2490,2491,2493,4323,4709,4710,4712,4688,4696,4702,4586,4304,4583,4614,4826,4615,4668,2510,2513,4832] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4627,4629,4234,4233,4260,4593,4595,4104,4107,4205,4208,4287,4288,4289,4290,4191,4261,4273,4202,4086,4630,4620,4591] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1432,1434,1461,1460,1476,1391,1111,1101,1462,1415,1417,1427,1555,1428,1553,1384,1378,1381,1382,1276,1278,1103,1522,1525,1556,1099,1098,1100,1279] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [6012,6013,2759,6144,6274,2760,5786,5789,5796,5798,5797,5799,5824,6275,6276,6277,5913] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [381,754,755,1246,615,1236,1240,1241,1254,1256,617,1242,1248,1252,1266,1268,1269,545,740,751,625,627,616] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1362,1367,1369,1371,1735,1736,1749,5114,1363,5003,5004,5115,5120,5137,5139] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4733,4765,4767,4775,4732,4734,2366,4685,870,871,850,860,2336,2359] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        