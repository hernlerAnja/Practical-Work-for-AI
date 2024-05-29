
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
        
        load "data/8D76.pdb", protein
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
 
        load "data/8D76.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2715,2719,2717,2856,3233,3235,3238,3239,3634,3263,3265,3663,3664,3294,3261,3262,3270,2670,2663,2664,2665,2667,3214,3216,3217,3749,3104,3743,3744,3221,2693,2695,2694,2696,2697,2698,2692,2871,3648,3750,3752,3008] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [168,169,170,342,1225,1227,189,190,191,688,1219,704,327,692,710,1138,706,479,687,685,575,167,1110,1112,1123,1109,1224,1139,140,145,709,732,733,736,142,171,172,173,741,139,765] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3790,3791,3792,3855,3860,3862,3864,3866,2997,2998,2999,183,2966,3886,3887,3888,3889,3869,3870,201,104,3021,3782,3788,357,363,351,352,646,105,106,353,634,648,641,3833,3834,3835,633,61,59,60,3848,3023,365,3796,2968,2964,2965,2972,2974,3602,3881,3885,3893,2941,135,2944,3767,3773,2993,2996] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2850,2759,2761,2764,2766,2836,2765,2762,2763,3128,3131,3130,2572,3126,3127,3208,2553] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [597,598,599,23,43,236,237,42,321,601,679,230,233,234,307,232,235,602] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3611,3612,3648,3649,3752,3638,3639,3918,3920,2689,2692,3751,2688,2695,3637,3766,3768,3765] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [729,2332,2333,2358,2396,2392,2393,2394,727,2398,813,814] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3402,3404,4810,4835,4807,3377,3378,3391,3392,3387] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        