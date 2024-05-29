
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
        
        load "data/5WBK.pdb", protein
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
 
        load "data/5WBK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6384,7717,7744,7745,7749,7750,8120,8121,8117,7730,6347,6350,6352,6351,6326,6335,6336,6338,6341,6337,5985,7365,6355,5990,8093,8098,8122,8092,8083,8099,5971,5972,5977,6694,6699,7027,7031,6709,7376,7370,7373,6710,7048,7030,7034,7040,7043,7044,6715,6717,7064,6714,7062,7063,7385,7386,7390] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [2449,742,2476,736,731,734,751,749,2201,2207,2208,2211,2244,2246,2504,2202,2245,2203,2204,2205,2206,3242,8298,8292,8295,8287,8309,2113,2114,2122,2125,8302,2142,2143] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [2968,2190,2974,2138,2151,2153,2219,3249,3250,2999,3001,3286,3287,3295,3297,3011,2218,3272,3000] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [1619,1620,1636,1606,1611,1616,1617,2656,2657,1621,1622,1639,1640,2654,1603,1604,1518,1561,1516,1519,1623,1608,1607,1656,1506,1508,1515,1507,1511] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1931,1933,1970,1971,2782,2796,2797,1925,1963,1959,1966,1967,1923,1924,2540,2784,1894] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3496,3523,8279,2420,8278,2384,301,307,298,304,2418,8281,283,285,293,3514,276,295,288,3805,3806] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2297,2302,2303,2305,2326,2339,2342,2333,2338,3486,3487,2309,3466,3467,3468,3459,272,3171,3170] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [5055,5057,5027,5084,5085,5171,5169,4814,5047,4790,4788,4789,4822] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [1856,703,1858,1882,676,706,535,699,2056,1874,1875,1878,1880,736,735,2116,2117,2118,694,732,733,1853,701,1848,1872,1870,2176,1854,2177] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [5257,6470,6280,6297,6281,6282,6283,6469,6480,6101,6265,6267,6468] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [119,5510,5516,5519,4618,5518,4621,4278,4306,5572,117,5515,5542,5543,5538,5541,5534,5535,5537] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [484,455,1727,1734,1729,1445,494,502,1791,1083,1084,1086,1087,1092,1085,1093,462,453,454,504,1089] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3680,3681,3682,3683,3684,3679,3646,3652,3685,3371,3659,3653,3656,3657,3347,3349,5584,4012,5582,3987,3989,3988,3372] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [6550,6554,6043,6217,6027,6028,6531,6538,6407,6409,6412,6402,6414,6545,6547,5675,5676,6003,6002,6004] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3768,225,3748,3735,3765,3766,3743,3741,4032,4034,5531,5532,5501,224,226] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5572,117,149,185,5513,116,5515,186,192,174,219,5506,234,5510,5516,5508,5534,5536,5535,5537,5571] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5466,5469,4370,5473,5474,4670,4399,4400,4401,4409,5468,4083,4086] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        