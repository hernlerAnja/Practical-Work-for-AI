
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
        
        load "data/7MZY.pdb", protein
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
 
        load "data/7MZY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2109,2097,2110,2662,2677,2678,2812,2815,2663,591,2107,2111,2115,2116,2118,4245,4246,4248,4249,4250,2252,2253,2254,4350,4351,4353,4369,4370,4368,2125,2114,2075,2081,2088,2090,2085,2649,2648,4374,4399,4393,4396,4397,4398,2816,2819,4389,4338,2676,4302] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4409,1321,1317,564,1980,563,1323,1964,1972,4389,4391,4408,1307,1304,4407,1965,1968,4396,1320,1342,1979,1981,1982,1986,1974,1988,1989,2116,2118,4246,4248] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1664,1457,1459,1460,1824,1914,1921,1925,1928,1051,1677,1012,1001,1014,1006,1008,1565,1567,1455,1672] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1639,1652,1653,1773,147,1551,1573,1543,145,146,1634,1635,1584,1586,1587,1530] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1451,1545,1546,1574,1437,1436,1439,1446,1433,1519,1530,1525,1531,1536,1429,1430,1515] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3391,3396,3562,3398,3399,3560,3561,3387,3392,4042,4044,3662,3664,3583,3382,4190,4204,4211] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3721,3821,3822,3823,3757,3719,3713,3697,3802,3805,3809,3743,3754,3755,3756,3804,3700,2343,2342] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3627,3630,4098,4094,3218,3225,3228,3834,3840,3841,3842,3847,3994,3223,3737,3738] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3600,3607,3744,3621,3620,3616,3685,3603,3689,3701,3706,3710,3714,3715,3716] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2000,1884,1886,1895,1985,1977,1978,1981,1889,1894,1896,1879] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1390,1392,1504,1507,1492,1494,1407,1414,1413,1425,1503] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        