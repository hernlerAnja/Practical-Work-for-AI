
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
        
        load "data/6XBZ.pdb", protein
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
 
        load "data/6XBZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1437,1797,1799,1798,1800,1803,3214,3215,1808,1817,1820,1821,1823,1435,1439,1445,1452,1440,1443,1444,1447,1446,1455,1137,1138,1836,1839,1844,405,514,3223,3772,3774,3987,3991,3992,404,1813,1815,521,437,1848,1851,1852,4038,4039,4015,4016,4040,4041,3245,3244,3746] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3764,393,395,428,429,164,165,167,396,152,140,424,425,426,141,143,4253,4254,4979,4981,4982,4992,4980,4991,4994,5000,5001,5002,3726,3727,3728,4001,4003,3735,3737,336,355,4946,4948,4949,4941,4959,4248,374,375,59,66,3741,80,84,86,3738,3739,3740,3742,543,83,101,102,103,542,123,137,134,4993] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3198,3946,3947,3949,3972,2900,3948,3866,3939,3940,3302,3054,3419,3420,3429,3445,2887,2888,2891,3448,2889,2892,2899,2906,2907,2934,2910,2919,3165,3166,2923,3167,2922,3086,3164,2926,3070,3071,3069,3423,3425,2948,3421,2897,2893,2894,2895,2946,2947,3839,3841,3842,3843,3827,3828,3809,3810,3811,3851,3941,3475,3867,3464,3465,3456] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1127,1842,1153,1154,1129,2113,2176,2138,2177,1033,1034,1151,1174,2110] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3656,3657,3681,5111,5116,5122,3650,5106,5105,3619,20,22,3682,3648,3647,3621,3278,3287,3288,3911] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [804,803,2801,2774,2796,874,2776,864,876,772,773,2804,2806] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1877,1878,1880,4024,4023,412,263,251,1910,1912,259,265,379,380,269] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        