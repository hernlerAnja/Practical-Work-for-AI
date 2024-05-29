
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
        
        load "data/5ZV2.pdb", protein
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
 
        load "data/5ZV2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1208,1207,218,219,220,222,217,191,192,194,798,810,811,793,1284,1285,1293,1286,1287,1291,1312,1309,1308,847,849,821,1178,848,200,202,212,536,538,752,404,406,650,651,768,767,570,571,1296,561,533,535,560,569,1301,1303,187,189,242,243,786,790,772,392,190] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2943,3064,3086,3582,3585,3508,3509,3071,3076,3082,2479,2481,2684,3085,3103,3113,3106,3140,3141,2482,2483,3090,3102,3592,2509,2510,2511,2512,2514,2504,2534,2535,2698,2699,2700,2830,2477,2478,2484,2827,3603,3586,3604,3597,3060,3059,2696,2861,2825,2863] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2139,2141,2142,1593,2146,2149,1061,1088,1089,1596,1592,1594,2136,1604,2157] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1775,1774,2068,1904,1914,1921,1640,1637,1670,1470,1493] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3390,3358,4382,4389,4393,4397,4379,4381,3362,3846,3847,3832,3833,3834,3835] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [4109,4110,3877,3880,4136,4073,4014,4015,3710,4149,4308,4306] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        