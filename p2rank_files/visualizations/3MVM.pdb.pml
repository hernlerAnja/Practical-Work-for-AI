
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
        
        load "data/3MVM.pdb", protein
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
 
        load "data/3MVM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4024,2961,3088,4034,4035,3244,4026,3358,4027,3553,3561,3565,3546,3538,3557,3071,3516,3517,3533,3534,3084,3087,2977,2978,3072,2979,3550,3551,3576,3574,3924,3947,3566,3567,4045,3278,3279,3280,3357,4046,3242,3519,2947,2949,2950] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1304,836,852,1202,835,845,846,848,849,1225,831,844,635,1305,834,812,349,811,816,350,239,256,830,558,1302,1312,1313,557,795,362,365,366,522,794,237,255,257] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1507,1508,1509,1503,1496,1482,1483,1488,1892,1899,1905,1904,1906,1893,2235,2236,1441,2242,2243,2244,1895,2230,2231,1870] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2683,2687,2704,662,663,664,668,673,676,162,2703,26,27,44,45,2662,2664,683,686] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3725,3689,3690,3985,3958,3966,3607,3608,3954,3609] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1529,2235,2236,1441,2242,2243,2244,1895,2230,2231,1870,1507,1509,1503,1488,1893] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3743,3342,3343,3777,3778,3779,5122,5126,3334,3717,3715,3751,3753,5075,5080,5077,3741] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3395,3398,2720,2737,3405,3408,2724,2736,3390,3385,3386,5392,5408,2755,2871,2872,2889,2754] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2462,2463,4392,4790,4515,4751,4791,4524,4522,4389] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1055,1056,2372,2421,993,1021,1029,2375,2377,620,621,1057] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1817,1819,1684,1809,1810,2047,1687,1671,2083,2085,1670,2086] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        