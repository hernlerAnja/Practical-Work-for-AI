
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
        
        load "data/4UWC.pdb", protein
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
 
        load "data/4UWC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1258,724,1257,203,201,223,225,224,178,187,190,172,173,175,176,745,763,1334,1335,603,198,199,200,1341,374,492,601,602,194,773,801,766,800,719,720,372,524,358] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1950,1954,1957,1961,4070,4137,1826,4138,4152,4154,4155,4278,4285,4289,4282,4283,4143,4145,4264,4288,4296,4302,4303,1953,1727,1730,1947,1948,1968,1787,1812,1815,1797,1798,1803,1805,4290,4291,4292,1767,1814,4265] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2963,3666,2885,3665,3671,3672,3079,3080,3673,2727,2728,2729,2730,2853,3592,3593,3084,2550,3123,3105,2546,2547,2545,2552,2599,2551,2549,2714,3096,3098,3102,2598,3130,3133,3563,3577] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2729,2730,2829,3695,3696,2830,2818,2824,2827,2796,2817,2819,2823,2822,2799,2560,2561,2564,2580,2582,2571,2569,2573,2576,2599,2557,2558,2581,2584,2734,2746,2797,3700,3697] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1924,1932,1942,1806,1861,1898,1672,1669,1702,1507,1530,1947,1949] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4282,4146,4147,4201,4224,4235,4234,4259,4267,4284,3842,4042,4012,3865,4429,4427] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4297,4366,4368,4369,882,901,903,4403,906,4299,4339,4340,4338,4291,868,863,909,910] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1951,1955,1956,1957,4127,1930,1934,1928,3239,3253,3255,1945,4105,4121,4124,3215,4104] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1816,1817,1818,1820,1822,1823,1827,4192,4193,4194,1810,1512,1448,1449,1470,1472,1488,1476,1813,4250,4219,4251,1788,1789,4227] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3539,3540,3829,3526,3527,3538,3708,3737,3868,3869,3830,3741,3831,3950,3951,3952] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [196,373,374,197,206,207,491,1365,210,378,390,468,469,466,435,456,457,458,462] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        