
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
        
        load "data/Q7L7X3.pdb", protein
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
 
        load "data/Q7L7X3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1234,1252,2869,2872,2873,1267,925,3511,898,3507,883,887,893,897,3492,2877,278,281,283,285,3571,292,327,291,326,324,276,295,300,924,950,2871,3569,3570,720,861,434,866,1347,1349,2892,450,452,1342,1343,1345,451,904,906,1242,1243,1244,917,1246,1340,1268,722] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1553,3747,3754,5570,5571,3712,3715,3711,5601,5603,6676,6697,6699,1820,6671,6673,6677,5602,5628,5638,6640,3710,1815,1816,1818,3684,1826,1807,1435,1552,1561,6732,6734,6694,6696,6700,6702,1841,1843,1845,1847,6667,6669,6666,1835,1840,1817,1838,1822,1437,1529,1531,6760,6733,1873,1882,1540] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1781,1783,2851,2856,2858,2861,2864,2871,2846,2860,945,950,1782,1234,1252,2863,2865,2866,2869,1707,1757,1735,1747,1749,917,916,940,1734,1738,1741,943,1233,1241,1242,1243] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [5661,5662,5663,5665,5667,2850,2853,3593,3625,3620,1472,1474,1782,2852,2854,1783,2857,2861,2862,2864,2859,1796,1801,1803,1805,1808,1811,1454,2884,2885,2865,3655,3652,3656,3629,3631,3632,3627] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3786,3778,3785,3754,3782,5570,5571,1549,1552,1561,6732,6734,1557,1559,1560,3850,5512,6788,5508,5509,6764,6731,6733,5543,3818,5531,5541,5507,5505] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1811,1813,1816,1818,3692,3655,3684,5659,5661,5662,5663,1803,1805,1806,1807,1808,5602,5624,5630,5626,5631,5638] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3693,1811,1448,1461,1462,2886,2882,2880,2887,2888,2881,2884,3689,3691,3724,1439,2893,2897,2889,1435,3723,1495,1445,1440] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3849,3850,5475,5512,6824,6825,6826,3872,3846,3847,3877,3878,5408,5405,5438,5442,5451,5445] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3760,1430,3762,1431,3720,3788,3793,1553,3747,3751,3791,1551,1427,1417,1422,1550,1560] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [984,985,1000,1033,1034,2336,1008,2361,2365,2360,2358,2359,963,964,965,966] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        