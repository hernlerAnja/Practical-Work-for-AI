
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
        
        load "data/5A4C.pdb", protein
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
 
        load "data/5A4C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3477,3036,2673,3561,2548,2549,2550,2675,2494,2496,2497,3050,3448,3478,3112,3075,3562,3554,2913,2915,3570,3572,3573,2797,3560,3555,3563,3568,3574,3571,2795,3462,3058,3057,3054,3031,3032,2659,2671,3016,2830,2829] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1215,1229,1328,1244,1245,1321,1329,192,1322,170,171,177,178,732,750,733,729,691,355,356,357,208,206,207,353,706,707,341,590,711,471,503,468,469,470,173] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3937,1906,1907,1910,3974,3991,3972,4021,1770,3994,4004,4022,4005,1885,1886,1914,4145,4148,4149,4152,4156,3934,4131,4010,4012,4155,4160,4167,3988,1745,1755,1761,1688,1903,1904,1756,1773,1763,1921,1772,1739,1723,1725,1722] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4013,4014,4069,4144,4149,4151,4134,3879,4126,4103,4295,4293,3909,3709,3876,3732] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1764,1880,1466,1627,1660,1854,1489,1630,1898,1903,1905] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4232,4234,4163,4206,4235,4269,888,890,897,869,4157,4161,1932,4156,4153,850,855] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4023,4024,1846,1810,1811,1812,3645,3646,1871,1838,3996,4020,4017,3714,4030,4035,3690,4025,4027,4029,4034,3672,3674,3678] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2520,2531,2532,2527,2743,2741,2522,2675,2674,2533,2535,2515,2519,2512,2763,2768,2771,2773,2774,2767,2691] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4276,4279,4359,4360,4361,4392,4425,4355,4246,4250,4249,4213,4252,4423,4424,4216,4460,4277,4244,4245,4211] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1775,4060,4061,4062,1403,1447,1780,1781,1785,1786,1789,1471,1778,1431,1768,1774,1435,1771,4087,1429,1776,4095] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1218,1220,1408,1409,1216,1699,1422,1425,774,776,1437,1438,1436,1434] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        