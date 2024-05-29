
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
        
        load "data/5ZXB.pdb", protein
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
 
        load "data/5ZXB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3056,3057,3058,3059,3075,3073,2441,2982,3076,3077,3062,2909,3063,3064,2905,3066,2326,2541,2364,2365,2542,2559,2558,2335,2336,2363,2544,2330,2333,2334,2438,2439,2434,3050,2357,2388,2892,2893,2359,2358,2386,2846,2577,2983,2580,2585,2598,2214,2575,3068,3071,3072,2226,2228,2067,2093,2063,2064,2065,2092,2094,2068,2070,3074,2605,2222] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1126,1127,1128,1130,1007,1111,1129,1131,138,294,589,298,300,606,166,164,486,488,1105,411,1037,1038,135,648,622,627,645,131,132,133,137,652,136,284,285,286,165,605,489,624,383,412,1114,1117,1118,1112,1123] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [379,964,381,383,412,1114,1118,966,1112,1113,1121,435,404,406,409,410,948,946,902,901,485,486,481,482,1105,411,1111,960] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2613,2633,2634,2649,2676,2678,2679,2675,2707,2708,2595,2635,2637,2990,3012,2767,2768,2710,2732,3008] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1965,9,1,2,1971,1978,421,422,2147,2157,2158,2161,2162,2005,2007,2138] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3560,3286,3707,3708,3706,3251,3254,3559,3554,3408] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1606,1607,1309,1154,1455,1753,1755] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2373,2381,67,66,41,47,50,54,2351,2346,2348,2349,2350,547,551,553] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        