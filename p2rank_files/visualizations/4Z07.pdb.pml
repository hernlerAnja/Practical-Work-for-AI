
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
        
        load "data/4Z07.pdb", protein
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
 
        load "data/4Z07.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [704,705,207,209,693,678,683,649,686,3055,3056,3051,3083,3082,634,635,648,3199,694,712,779,784,790,3093,577,578,804,628,3122,626,3091,710,435,436,774,786,782,789,178,184,182,673,672,191,196,198,190] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1109,2598,2599,2643,2652,1072,1186,2212,2216,2217,2211,2219,2703,2456,2457,2821,2695,2722,2711,2721,2700,2710,2228,1042,1043,1081,1078,2645,2729,2801,2807,2796,2803,2806,2728,2723,2791,2786,2690,2666,2667,2665,2651,2656] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2021,2022,2023,2024,2025,2026,2027,1690,1715,1777,1689,1691,1700,1702,1706,1711,1637,1682,1619,1620,1667,1508,1507,1611,1779,1783,1524,1798,1362,1363,1782,1772,1767] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4722,4732,4743,4674,4688,4689,4717,4725,4821,4822,4665,4667,4668,4823,4829,4753,4813,4733,4749,4750,4751,4744,4227,4616,4617,4843] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3714,3716,4030,4031,3709,3713,3715,3784,3674,3686,3707,3689,3696,3697,4026,4028,4029,3644,3645,3626,3627,3628,4025,4027,3520,3521,3619,3535,3790,3779,3376,3774,3789,3805,4015] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [242,968,969,970,967,943,274,997,996,202,722,2771,935,941,2753,944,945,2754,2755,730,731,733,734,743,745,2750,2747,2751,2760,2223,2227,2762,1006,1009] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [483,4961,4967,4071,4072,4364,351,490,4381,4383,508,509,424,366,386,4049,4960,4054,364,365] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2263,2984,2987,2294,2295,3014,2985,2986,2960,2750,2745,2747,2751,2760,2223,2762,2739,2954,2963,2965,2962,730,731,733,734,741,743,745,736,737,738,2771,751,202] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [11,15,4479,974,975,976,977,979,952,978,955,954,1052,1016,985,4499,4500,947,948,2773,2776,2781,2802,2783] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [916,918,922,923,928,4524,4400,4399,4458,4541,4543,39,32,21,4420,16] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [902,4385,4524,4384,4400,4399,4541,4543,347,38,60,61,4420] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [712,783,785,2996,3062,3093,3094,594,713,3032,3054,3056,3033,3064] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        