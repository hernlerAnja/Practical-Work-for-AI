
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
        
        load "data/5XS2.pdb", protein
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
 
        load "data/5XS2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [316,318,255,259,260,874,293,295,296,261,267,256,905,906,2944,2978,1435,1433,1434,560,1441,459,461,317,819,821,822,457,444,2947,2948,1329,1330,843,846,837,839,1306,1313,1305,887,888,890,893] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1294,1592,284,285,1292,1293,1306,889,884,891,892,894,886,929,927,1276,1638,1649,1651,1652,1640,1609,1610,1615,1601,1603,1613,961,1866,1910,1300,1301,293,276,279] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1563,1565,1662,1562,1558,1564,2011,1266,1779,1692,1780,1262,1645,1655,1658,1659,1693,1661,1600,1601,1602,1625,1613,1644,1654,1733,1746,1748,1721,1722,1725,1726,1727,1267,1581,1561,1461,1463,1585,1271,1276,1717,1689,2023,2026,2028,2017,2050] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4318,4320,4288,3035,3036,3038,3048,3050,3051,3053,4280,4285,4277,4629,4367,4637,4638,4639,4640,4641,4642,4329,4330,4331,4636,4632,4355,3022,3031,4282] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3729,4029,4031,4024,4040,5155,5128,5168,5169,5170,5129,5108,5131,4021,19,3715,4087,3713,3714,12,5177,5178,7,5167,3728,3727,4075,4076] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1487,3017,3018,4264,4265,4282,3820,3529,3831,3832,4269,1232,1507,1230,4318,4321,3530,4280,4285,4274,4292] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4572,4562,4563,4565,4567,4568,4573,4574,4575,3220,3299,3301,3338,3339,3341,3333,3367,3336,3337,3332,3294,3296,3297,3326,3187,4604,3161,3162,3194,4944,3343,4942,4966,3342,3344,4967,4968,4969,4970,4940,4945] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2558,2515,2544,2519,2540,2543,2520,2801,2802,2803,2522,1882,2514,2513,2509,1076,1077,2774,1052,1086,2772,1050,1053,1054,1055,1056,2807,2818] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2229,2666,1681,1682,2657,2658,2651,2263,1737,2250,1715,1718,2226,2251,1758,1734,1735] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2142,2163,2604,2426,2424,2194,2195,2196,2198,2636,2637,2146,2430,2601,2642,2641] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3437,3436,3408,3415,4555,4556,4518,3438,3439,3440,4520,4519,4522,4529,5020,5021] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [2165,2181,2369,2320,2321,2236,2237,2288,2289,2159] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [71,3675,3240,3241,73,3651,3665,3671,44,3692,3693,65,99,61] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4585,4584,4543,4545,4548,4533,4534,4536,4658,4300,4301,4276,4588,4630] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        