
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
        
        load "data/4F7J.pdb", protein
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
 
        load "data/4F7J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1348,1354,431,1344,1357,290,1358,289,1359,1360,233,877,878,228,231,533,562,1345,1349,433,1356,248,247,234,236,789,790,791,792,793,794,416,845,2671,1240,1241,639,798,815,819,818,2669,2670,809,638,1363,1364,1367,1216,1217,1368,862,865,846] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1411,1413,1424,1425,1683,1211,1212,1639,1387,1388,1389,863,864,866,901,1204,861,1203,858,899] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2765,2777,2780,4366,4363,4364,4057,4015,4357,4359,4045,4047,4058,4056,4082,4081,4083,4012,4004,4007,2762,2763,2775,2744,2747,4001] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [561,533,562,1342,1343,1349,554,1150,522,630,589,638,1155,1161,1352,1167,1106] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2281,1655,2236,2266,2267,2525,2237,997,2495,2497,963,964,987,965,967,968,988] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3456,4866,4867,4869,4870,3756,3758,3748,4893,3442,3441,3439,3440,3449,4916,3454,3455] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3323,3325,3095,3098,3411,3085,3086,3057,3084,3362] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1988,2381,1936,1454,1455,1491,2380,2374,2389,1951,1952,1933,1506,1531,1955] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2364,2365,1868,1871,1876,2153,2324,2327,1880,1888,1889,1921,1922,1923,1924,2354,2348,2359,2360,2358,2322] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1906,2015,2043,1884,1886,2044,1891,2092,1962,1893,1963] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [133,123,137,138,702,762,703,148,726,699,193,195,145,146,147,126,441,763,765] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        