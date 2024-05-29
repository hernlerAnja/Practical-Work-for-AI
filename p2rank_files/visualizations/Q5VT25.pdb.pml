
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
        
        load "data/Q5VT25.pdb", protein
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
 
        load "data/Q5VT25.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [739,742,689,690,692,1320,1685,3011,3013,1684,1711,1712,685,839,687,741,1270,1281,855,857,1798,1789,1791,1792,1794,1696,1265,1261,1264,1127,682,684,3009,3018,1283] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [8373,8375,8951,8953,11888,11894,11898,8362,11885,11872,11877,11879,8360,8540,8564,11607,8520,8523,8513,8531,8534,8380,8434,8515,8516,8517,8518,8519,11627,8396,11630,11632,11633,11606,11608,11614,8392,8395,8397,8398,8525,8527,8971,8949,8952,8950,8973,11889,11882,11884,8732,8733,8734,11631,11836] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [704,1696,1656,1672,1673,1944,856,873,1796,1797,1798,1794,1936,1937,705,707,710,712,696,1684,719,722,1811,721,968,976,1812,1813,921,872,1021,967,969,1819,1932,1934] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [10973,10975,10966,10971,10983,10990,12008,12009,12010,12011,12012,10586,10580,10581,10595,10992,11373,11706,10977,11010,11700,11703,11008,11692,11366,11375,11381,11704] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3241,3325,1038,1039,233,1040,1036,1068,1069,1070,142,3321,3235,3239,232,1618,1620,1842,1840,1841,192,200,178,202,204,171,175,176,169] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3119,3192,3178,3180,3117,342,345,1202,1203,3203,3204,903,1204,1205,1206,322,323,3201,3188] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [314,1204,1205,1206,315,1193,1195,1202,3204,890,1190,1187,313,280,282,283,311,285,254,3198,3200,3201,3199,345] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [9175,9402,9403,11914,9791,9401,9421,9422,9424,9783,9784,9171,9756,9758,9145,9168,9161,9169,9176,9181,9182,12175,11920,11937,11912,11930,9144,9146,9141] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [12080,375,378,12090,12086,373,372,430,9886,9887,338,374,456,459,12276,457,12274,9846,12302] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [503,10108,12527,12248,12244,12252,9830,9834,12246,12310,12311,10082,12262,10106] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [2141,2143,2680,2685,2699,1575,1579,2104,2106,2698,1576,1574,1589] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [366,3171,367,421,423,330,444,294,3173,3174] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2888,2904,1442,1473,1477,2881,2804,2806,2813,2803,2812,2883] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [10321,10360,10322,10363,10515,10381,10384,10494,10495,10513,10514,10178,10516] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [117,240,241,12549,116,118,216,217,12544,12546,12573,3355] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        