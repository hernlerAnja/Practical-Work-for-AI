
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
        
        load "data/6SG4.pdb", protein
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
 
        load "data/6SG4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3246,3247,3281,3427,2570,2573,3428,3256,2582,2574,2578,2579,2580,2581,3311,3313,3400,3374,3282,959,960,973,975,976,947,951,3253,945,946,950,2877,2886,2887,1010,1012,2564,4091,989,990,3375,3376,3407,4098,4100,3254,3255,719,720] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3239,3474,3222,3522,3573,3574,3595,2629,2628,2663,2293,2660,2632,2635,2287,3521,3523,3472,3478,3538,2601,2626,3476,3482,3232,2285,2294,3551,3531,3532,3534] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [246,823,404,407,824,895,387,438,795,802,399,4215,4203,28,431,424,380,382,383,44,896,897,900,901,4202,377,378,379] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [6769,6770,6771,6765,7437,7438,5179,6757,6761,6764,5137,5146,5147,5160,5171,5199,5176,5177,6755,5138,7445,7447,7440,7444,6773,7077,7078,5134,7617,7618,7619,8289,8291,5162,7463,7468,7472,7502,7504,5163,7470,7567,7591] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [6316,6112,6122,6346,6347,6348,6309,6314,6318,5158,5161,5169,5389,5149,5164,6331,5142,5144,5396,5397,5390,6334] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [7413,7418,7423,7424,7430,7665,7673,7667,7669,7663,7725,7713,7786,7742,7723,7712,7714,7764,7765,6467,6826,6484,6485,6442,6476,6854,7729,6792,6817,6819,6820,6823] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [2156,2157,2125,2126,983,1940,977,1209,2144,2146,982,1203,962,971,974,1954,1211,1215,1930,1931] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [7968,7969,7971,6345,7477,7512,6343,6353,6354,6306,7522,7523,7967,7510,7521,6312] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4432,5082,5009,5010,5011,4225,4227,4228,5087,4982,4989,4245,4246,4329,5083,8,4569,4565,4567,4566] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2119,2120,3780,2152,2155,2151,3286,3290,3779,3331,3332,3321] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [6114,6122,6123,5756,5800,5368,5765,5313,5350,5351,5365,5364] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [7158,7186,7004,7003,6664,6663,6695,6728,7188,6673] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1980,1236,1965,1970,1971,1974,1976,1954,1212,693,1208,1209,2145,2143,691] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2808,2482,2828,2967,2969,2998,2504] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        