
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
        
        load "data/4BIB.pdb", protein
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
 
        load "data/4BIB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1053,1152,1158,1159,163,313,1160,1042,150,151,143,144,149,156,162,194,311,490,622,1068,192,193,296,623,627,145,147,148,661,1069,642,645,646,604,1161,1163,1172,1153,1154,404,406,1165,1173,372,374,375,373,1043] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2384,2386,2186,2303,2304,2305,3153,3155,3156,3161,3162,2626,2494,2185,2627,2184,2631,2288,2139,2638,2642,3044,3154,2672,3071,2668,2650,3070,2663,2665,2646,2649,3174,2385,2673,2136,2140,2142,2141,2135,2137,2155,2148,2417,2415,3170] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1350,1369,1372,2434,2436,1377,1378,1861,1862,1376,1381,1385,1860,2963,2965,1368,1301,1355,1359,1333,2962,1334,1335,1855,2432,2433,2435,1870,1871,2397,2398,2400,2403,2431,2405,2983,2401,2981,3200] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1376,1381,1382,1385,1860,1880,955,1894,1897,1898,1899,1903,1911,1904,1909,1372,1377,1378,1380,943,945] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2744,2739,2741,3089,3091,3092,3094,2765,2848,2849,2814,2740,2742,2815,2738,2790,2832,2833,2835,2837,2838,3113,3114] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [737,742,1092,739,740,1089,1090,813,847,846,835,812,788,763] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        