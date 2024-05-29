
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
        
        load "data/5BNJ.pdb", protein
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
 
        load "data/5BNJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1233,1232,856,824,2661,1348,1364,1366,1367,1352,1341,1342,1344,1336,1337,1338,1343,521,549,550,425,771,772,773,621,622,297,298,299,237,240,2659,2660,242,768,770,767,410,271,272,274,276,277,267,268,273,275,519,520,427,490,492,493,443,494,1357,623,797,777,794,1216,1208,1209,1354,1381] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2735,2753,2768,2754,2755,2756,2769,2771,3935,3943,3946,3976,3938,4279,4280,2738,2739,2740,3977,4008,4009,3982,3983,4018,4020,4286,4287,4289,4288,4290,4291,4292,3984] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1195,1193,1204,1464,840,842,1428,1205,1209,843,845,1197,878,879,835,1465,1451,1453,1718,1429,1719,1674,907] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2493,2495,2269,2278,2267,2268,2523,980,1690,2240,1686,2233,2241,2282,986,979,981,982,961,2539] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [512,1360,3524,3528,1358,3511,1143,541,542,1126,1138,1144,1147,1356,1170,1398,2719,2723,2716,3923,3522] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4582,4583,2879,4212,4218,4223,4224,4225,3006,4215,3002,3048,3043,3042,3001,3003,3044,3076,3045,3046,3047,3049,4605,3050] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3302,3294,3296,3104,3334,3377,3036,3034,3077,3070,3072,3074,3064,3035,3066,3068,2931] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3405,4788,4763,4803,4802,3420,3709,3707,3404,3406,4767,4764] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2325,2328,1897,2165,2360,1917,1942,2361,2365,2366,1901,1893,1904,1905,1914,1945,1943,1944,2349] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1495,1566,2381,2382,1494,1528,2005,1531,1954,1973,1993,2375,1976,2390,1994] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [973,956,957,2627,949,2638,2639,900,934,943,948,947,2612,2589,2628] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        