
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
        
        load "data/7A4O.pdb", protein
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
 
        load "data/7A4O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [490,3306,3054,3063,3065,4199,4198,4200,4043,4060,4042,4332,4059,4336,3231,3056,3060,3050,3047,480,486,481,485,478,3213,3646,3066,3084,3086,3214,3215,3085,4197,4190,4193,4083,4071,4099,4192,4072,3644,3198,3500,3642,3651,3665,3671,4100,4191,3676,3667,3668,3669,3670,3698,3726,3028,3033,3034,3035,3032,3664,3031,3308,3309,3337,4221,3303,3645,3647,3643] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [283,1426,556,285,287,1412,1413,3250,3253,3258,3262,3267,1433,1434,3254,522,280,499,494,531,454,270,273,279,3255,277,278,1524,1531,1533,1534,1263,1264,1266,1540,1541,1545,1306,1307,2860,1283,1282,3244,1510,1527,1256,1529,523,1427,1428,528] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1403,1405,864,865,1404,421,1323,888,890,891,287,437,438,1407,1413,1410,309,1406,436,867,869,308,257,251,252,253,255,887,289,263,260,1306,1322,921,1294,899,870,723] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2783,2860,2858,2861,1521,2771,2781,2764,2765,1283,1282,1298,1299,1546,1550,1554,1557,1562,1563,1564,1565,1566,1577,1524,1531,1533,1534,1266,1540,1541,1544,1545,1281,2838,3256,278,3250,3258,1434,3254,2857,2859,1520,1510,1515,3244,1529] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [69,463,501,500,65,67,68,57,77,79,2849,3257,274,278,272,2850,3240,3048,3050,3055,3049,2848] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [546,514,515,513,516,517,4318,4320,539,4315,548,4287,4285,4282,4284,4286,4267,3307,4225,4220,4217,4218,4219,4035,4260,4232,4233,4259,3295,3298,3299,3304,3327,3329] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [470,4325,4379,4337,4341,4343,4345,790,816,818,819,789,472,474,481,482,485,509,467,469,471,4332,4335,4336,4354,4356,4301,4304] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1442,1445,1446,1447,1450,3266,1663,1665,3298,3318,3319,1471,1478,1481,1482,1483,1465,1468,1504,1505,1506] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [837,765,773,769,770,771,4307,4313,4312,537,540,4293,4305,562,563,838,533,535,536,4283,599,4297,774,783] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1577,1578,938,939,940,1564,1566,1825,1826,1780,1298,1299,1281] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4076,4357,3715,3717,4616,4355,4368,4369,4571,4075,3713] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        