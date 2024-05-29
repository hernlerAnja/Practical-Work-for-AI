
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
        
        load "data/2GQG.pdb", protein
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
 
        load "data/2GQG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3464,3465,2509,3036,3028,2475,2477,2478,3030,3539,3540,3555,3557,2530,2529,2531,2783,3541,2504,2505,2507,2654,2656,2652,2993,2996,3012,2638,2641,2643,2648,2807,2881,2882,3011,3016,2640,3068,3064,3071,3061,2488,2474] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [239,240,241,243,238,266,383,387,389,210,264,265,1276,1279,1280,391,516,517,518,1282,1200,375,751,768,772,746,212,771,779,767,1274,1275,617,1199,542,543,731,747,728,806,796,799,803,795,830,242,223,226,235,209,215,217] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [4205,3217,3219,4206,3195,3197,3198,3953,3956,3959,3958,3976,3923,4243,4244,4218,4219,3221,3222,3225,3227,3228,3253] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1695,1696,1699,1946,1948,1952,1959,1958,1945,1947,1698,933,1693,952,954,957,930,932,960,1659,1983,1984,2199,962,988] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1280,1281,391,514,516,517,518,1282,447,476,446,436,444,390,238,248,438,1175,233,242,228,229,230,1176,1185,1148,1149,1305,1304,1295,1444] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2712,3561,3562,3569,2742,2503,2656,3546,2782,3560,2501,2745,2741,3414,2494,3570] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2176,1023,1024,2175,2210,588,587,997,991,992,995,996,972,603,1001,593,594] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        