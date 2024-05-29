
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
        
        load "data/6NZR.pdb", protein
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
 
        load "data/6NZR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1054,304,305,153,160,200,202,150,152,201,288,306,1066,1218,1222,1030,1044,658,653,1617,1619,1369,1326,1327,1371,1043,1031,1225,1234,1235,168,163,186,166,1338,1334,1341,1340,1328,1333,415,711,712,1052,1053,1055,1049,1057,140,141,142,144,145,146,147,676,679,680,703,1082,1083,289,674,728,1370,1547,1584,1616,765] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2689,2156,2310,2311,2731,3106,2213,2730,2152,2153,2154,2159,2212,2214,2165,2677,2695,2699,3105,3222,3075,3067,3089,3077,3078,2722,2691,2698,3054,3240,2172,2175,2179,2180,3243,2178,3053,3341,3343,3223,3239,2672,2326,2327,2328,2198] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1109,1111,1113,3152,3166,3167,3168,3137,1095,3147,3148,3118,3126,3127,3131,3139,3124,3128,1163,2719,2720,2717,3135] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3072,3076,3066,3373,3546,3067,2747,3077,3080,3619,3372,3374,3332,3341] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2476,3029,3030,2456,2446,2448,3254,2449,3251,3252,2418,3262,3263,3264,3266,3267,3258,3430,3432,3433,3031,2445,2444,3036,3044] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1134,846,847,849,1130,1138,845,826,827,807,819,1132] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        