
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
        
        load "data/1JQH.pdb", protein
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
 
        load "data/1JQH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [373,1200,179,180,181,183,184,188,768,798,771,795,804,206,199,202,207,235,237,388,390,236,1180,1171,1181,1182,1273,1276,1279,1199,802,1198,631,773,754,529,1282,1283,747,748] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4805,5000,4848,4849,4850,5887,5889,5892,5894,5895,5001,5003,5896,5360,5361,4812,5813,5407,5408,5411,4986,4796,5380,5384,4794,5244,5367,5381,5886,5811,5812,5784] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [2509,2500,2501,2502,3123,3125,2711,3568,3571,3573,3574,3575,3565,3463,3473,3474,3491,2709,2556,2558,2557,3089,3092,2505,3100,3116,2952,3492,3093,3490,3068,3075,2694,3088,2504] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [2821,2823,2523,2715,2520,2540,2543,2513,2848,2818,2850,3587,3577,3578,2711,3571,3574,2852,2855,2709,2710,2707,2558,2527,2528,2529,2535] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5142,5137,5144,5147,5113,5115,5985,5987,4815,4819,4820,4821,4827,4835,5894,5895,5001,5002,5003,4850,4829] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [5627,5598,6800,5601,6801,6813,6810,5231,5220,5221,6849,6850,6814,6811,6812,5838,5842,5859] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [206,202,207,222,237,388,389,390,212,214,216,208,500,502,527,529,1280,1281,1282,1374,530,531,497,534] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [4528,2929,2939,4529,3306,3538,3280,3277,4479,4489,4490,4492,4480,3517,3518,3519,3521] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [5609,5546,5571,5451,5452,5485,5574,5575,5537,5532,5846,5576,5847,5848,5849,5850,5851,5853,5597,5598] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [608,1014,2236,2237,618,2198,2200,2197,2188,988,607,1225,1229,1246] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1233,1234,1235,1236,1238,1239,838,996,933,959,872,839,961,960,919,962,963,932,873,1240,958,984,985] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [3509,3519,3520,3521,2928,3537,3079,3554,3555,3084,3504,3505,3077] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3587,3654,3441,2850,3577,3578,3580,3571,3477,3662,3658,3661] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3527,3254,3255,3528,3530,3251,3252,3253,3526,3224,3194,3193,3221,3225,3160,3525,3288] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1075,1076,1077,1051,1528,1529,1530,2079,2080,1049,2098,2097,1537,1539] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5892,5898,5901,5762,5797,5798,5799,5742,5908,5984,5979,5976] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [1712,1850,1997,1999,1844,1572,1575] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        