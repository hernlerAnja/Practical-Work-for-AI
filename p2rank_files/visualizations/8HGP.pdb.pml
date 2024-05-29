
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
        
        load "data/8HGP.pdb", protein
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
 
        load "data/8HGP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4411,4412,4407,4409,4410,4417,4418,4419,4420,8997,8998,8995,8996,9007,7520,7522,4395,4399,4570,4406,4542,4405,4663,4416,4659,4678,8974,9061,8981,8994,4458,4460,4441,4509,4510,4500,4535,4536,4534,4537,4540,7518,7519,7521,7523,9047,9058,9039,9040,9042,9043,9033,8976,8978,8975,9056,9057,9059,6990,6783,7007,7008,6821,6838,6842,6845,7274,7495,7276,7506,7499,7512,7514,7515,6785,6792,4561,9063,9065] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [7180,7327,7325,7181,7386,7411,7401,7014,7015,7016,7054] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [2146,2168,2171,2570,2571,2572,2574,2575,2566,2569,2848,2356,2383,2358,2157,2158,2185,2189,2192,2847,2140,2145,2136,2141,2069,2137,3065,2125,2134,2135,3063,3067,2341,2181] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [15,18,23,27,2060,2061,29,30,13,14,204,203,3511,3510,2029,2050,3058,3288,3289,3290,3293,3498,3496,3497,3499,3522,2047,2034,2028,28,2129,3060,3062,3084] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [6858,6861,7043,7054,7014,7015,7016,6860,6862,6997,6896,6898,7412,7401,7203,7204,7181,7139,7140,7180,7327] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [6385,6387,1878,6381,6393,6398,6404,6397,6402,4821,6130,4819,4380,4619,4620,4634,6131,6132,6403,4360,4362,1856,4635,5006,5022,4833,5009,6096,6107,5007,5023,1849,1850,1851,1876] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [1991,436,439,440,251,1678,1681,1672,427,430,1722,1723,1724,1742,1744,1687,1685,1721,1652,1663,1666,1682,1667,1985] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [6212,6213,6192,6191,6193,6377,1781,2096,2097,2098,6513,6510,6512,1799,1803,1815,6122,1780,1830,1789,2095,6516,6514] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [6676,6586,6559,6563,6564,6565,2283,2284,6517,1818,6515,1892,1893,6505,6506,6499,6507,6501,6541,6508,6681,6576,6688] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [7510,7309,9058,9048,9057,7508,7542,7734,7735,7749,7544,7541,7579,7291,7566,7580] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [3122,167,55,94,104,140,100,101,3100,3120,3162,3103,88,96,78,82,3095,2884,3161,135,3123,164] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [1803,1815,1826,6122,1830,1817,6192,6193,6376,6377,6513,6512,6527,6528] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [5976,5977,1647,5875,5876,1567,1576,5978,1756,1763,1582,1566,1644,1646,1648] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [4634,1877,6385,6387,1878,6381,6388,1856,4632,4635,1849,4395,1875,6550] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [2366,2367,2372,2373,3076,2862,2864,3092,3094,2439,2443,2434,2441,2442,2444,3081,3087,3096,2368,2370] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [1467,1469,1472,5936,5939,5938,6029,5952,6026,6028,1474,1478,1574,1575,5958,5858,5859,5954,5860,5931,1555,1473,5863,1569,1572,1573,1568] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [8212,8214,8218,8225,8284,8285,8290,8081,8086,8087,8089,8090,8076,8288,8289,8295,8300,8297] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [1974,1976,267,2004,2029,1992,249,251,9,16] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [4863,4877,5122,8898,5120] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [838,729,495,817,558,559,575] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [5114,5344,5370,5389,5410,5198,5224,5343,5345] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        