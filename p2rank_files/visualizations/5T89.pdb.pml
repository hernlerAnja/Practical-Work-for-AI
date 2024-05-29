
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
        
        load "data/5T89.pdb", protein
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
 
        load "data/5T89.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1809,1972,1971,1871,2066,2080,1713,1792,1794,2069,1710,2189,1583,2210,2071,1712,1694,1987,1869,1870,1976,1984,1986,1865,1717,1581,1820,1834,1799,2072,2033,2034,2037,1839,2084] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [397,413,414,419,420,424,435,403,405,406,411,412,7994,384,387,389,390,392,395,959,960,963,964,965,966,8180,8016,427,8201,947,1114,1108,1109,984,985,1080,1075,441,444] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1170,1172,1175,183,184,185,186,179,334,1215,1221,1229,1233,1203,1204,1207,3467,204,205,1183,1185,1186,1191,328,329,300,1177,1182,3282,295,1199,1200,3266,1192,1194,1169,1167,1164,167,168] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [6814,6715,6777,6778,6815,6780,6437,6552,6563,6577,6582,6612,6613,6719,6729] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [894,895,1514,2573,2587,2603,1515,1506,1510,900,2566,1521,2790,2804,1516,2820,1218,1522,2569,2800,2802,2803] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [10949,10968,10971,10923,10458,10468,10470,10456,10957,9450,9466,10250,10254,9451,9453,9452,9444,9445,9446,9429,9431] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [9377,9572,9938,5194,4639,4641,5213,5214,9401,9924,9927,4667,9374,9376,9957,9958,9923,4636,9110,9354,5183,9355,9358,5180,9362,9371,4621,4624] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [10638,10847,10793,10876,10533,10534,10842,10843,10844,10845,10635,10792,10794,10509,10778,10779] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [7307,7321,7554,7524,7534,7300,7302,7303,7536,734,735,7538,7537,7334,7337,115,738,742,438,741] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [10053,10060,10062,9678,9687,9688,9696,9697,10052,10054,10047,10048,10050,10051,10204,10206,10208] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [7570,7310,7670,7584,7585,7600,7668,7312,7308,51,7684,87,7290,7292,7304,7305,7289] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        