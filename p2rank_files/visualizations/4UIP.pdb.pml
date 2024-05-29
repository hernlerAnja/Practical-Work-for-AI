
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
        
        load "data/4UIP.pdb", protein
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
 
        load "data/4UIP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3491,3504,3476,3508,3510,3598,3599,3473,3479,3480,3617,3614,3456,3468,3472,3616,3636,3661,3663,5611,5400,5402,5796,3643,3635,5798,5608,3445,5215,5201,5366,5367,5368,5200,5384,5385,5581,5582,5586,5199,5602,5601,3597,3610,3613,3632,3626,5789,5990,3594,5567,5583,5585,5587,5969,5776,3497,3502,3518,3551,3553,3523,3586,3579] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [298,686,492,496,487,2060,670,2044,2048,2050,2052,2053,2054,2055,2056,2065,2059,15,18,22,19,2067,2066,4,1794,282,23,283,483,484,25,295,294,43] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [6424,6431,6151,6404,6429,6428,3397,3398,3243,2972,6435,2954,3174,3175,3176,3186,3184,3209,3199] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3339,3340,3855,3908,3875,3876,3907,3898,3903,3535,3861,3866,3869,3871,3874,3897,4091,4092,3923,3925,3926,3927,3928,3310,3949,4102] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [203,204,322,340,341,68,234,244,69,80,83,326,87,124,123,171,173,104,172,196,198,199,200,167] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3523,3524,3525,3526,5187,5188,5184,3570,3569,3579,5197,5199,5362,5356,5568,5555,5354] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2175,1855,1871,1861,1857,1862,2039,1860,1785,1786,2040,2017] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [959,1159,1160,962,947,1155,1156,1480,1537,1762,1482,1549,1654,1544,1541,1542,1479] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3198,3588,3380,3381,3383,3593,3589,3591,5760,5942,3606,3210,3608,3609,6150] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4399,4528,4405,4524,4401,4506,4404,4418,4513,4333,4330,4332] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2446,2501,2456,2440,2443,2653,2454,2668,2507,2670,2671,2505,2938,2939] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2155,1881,1883,2032,1890,2033,2314,1884,2031,2301,2300,2315,1880,1892,1983,1984,1985,1989,2331,2160,2333,2335] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        