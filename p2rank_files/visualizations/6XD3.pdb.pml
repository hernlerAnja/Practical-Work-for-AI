
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
        
        load "data/6XD3.pdb", protein
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
 
        load "data/6XD3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2899,2900,2906,2907,2908,2910,2914,2915,3071,3946,3961,3962,3811,3963,3964,3969,3972,3947,3948,3949,2926,2928,3070,3971,2916,2917,3304,3421,3423,3425,3419,3420,3429,3069,2947,2948,3054,3445,2891,3440,2889,2888,2892,2894,3827,3828,3851,3941,3865,3866,3867,3449,3839,3841,3843,3475,3463,3464,3474,3476,3448,3456,2934,2919,2923,3165,3164] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1445,1137,1817,1821,1820,1138,1836,1844,4041,4040,4015,4017,1163,1162,1443,1439,1440,1119,1120,1787,1797,1799,1800,1803,1813,1815,3248,3247,1808,1811,405,3991,3746,3992,1852,437,1848,1850,1851,4011,514,3214,3215,3222,3223,3976,3979,3980,3987,1452,3983,3249,3772,1437] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3727,3737,4001,3761,3762,3764,3765,167,3735,4993,5024,175,176,164,165,160,396,140,152,429,393,428,395,141,336,4949,4950,374,375,353,355,83,86,3738,3739,3740,3741,3742,103,143,519,543,101,102,3728,4253,4992,4254,4979,4980,4981,4991,5000,5001,4248,4941,4946,4948] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1154,1173,1174,1125,1150,1151,1841,1842,1035,1152,1034,2138,2112,2113,2114,1127,1128,999] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [804,2796,2800,2774,2799,874,2776,773,2802] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3087,2934,3166,3167,2919,2923,3165,3071,2926,3070] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3650,3619,5105,5106,3622,5111,20,22,3681,3656,3657,3658,3682,5122] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        