
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
        
        load "data/4AE6.pdb", protein
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
 
        load "data/4AE6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3680,2027,2031,2032,2033,2034,2035,3681,3682,4539,4540,2030,2014,2015,4545,4548,4546,4003,3644,3649,3651,2049,2050,2053,2056,2029,2040,2041,3671,3672,3673,3675,3707,3709,4538,4535,4513,3994,4269,4270,4271,4254,3985,3983,4002,2060,2061,4255,4253,1876,1981,2005,2006,3684,1894,1983,1984,1985,1982,3679] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4116,4105,4107,4115,3334,3970,3987,4010,4142,3275,3298,3300,3299,4140,4139,4141,3176,3333,3335,3564,3024,3022,3190,3192,3025,3309,3014,3006,3009,3015,3174] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2992,3045,3046,3047,3173,3174,3159,3006,3632,3598,3596,3604,3605,3609,3610,3584,4026,3616,4027,3175,3176,3578,3577,3443,4105,4106,4108,3444] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [336,340,349,351,352,511,512,513,495,496,497,655,1440,1441,1442,1443,1456,1458,619,630,596,333,356,501] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2682,2704,2705,2706,3871,5024,2707,2708,2709,2716,2718,3870,3409,3411,5145,5143,5144,5146,5148,3844,5125,5107,3840] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [932,1354,1434,923,925,319,480,904,905,373,374,315,316,317,321,1435,1432,495,497,765,1420,911,935,929] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2455,27,26,51,52,1167,54,1196,1198,64,732,2453,2454,1171,1197,2334,2418,2433,2417,2429] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1008,1011,1831,1871,1598,1899,1609,1596,974,976,978,1312,1607,1580,1581,1321,1901,1872] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1330,1314,1442,1443,1469,1456,1467,1466,1468,1297] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1458,1465,1467,623,624,1462,1473,1550,1554,1479,1480,622,1571] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [379,380,285,286,240,504,505,863,882,239,396,487,283] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        