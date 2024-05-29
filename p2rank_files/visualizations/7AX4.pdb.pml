
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
        
        load "data/7AX4.pdb", protein
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
 
        load "data/7AX4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1072,1073,1062,1063,1085,1074,1071,140,724,707,715,716,725,1102,692,687,699,689,1230,1225,1226,1101,546,1050,1049,1337,1338,1339,1342,1345,1349,1351,1352,1374,1377,1380,1382,1381,1560,741,779,1611,1632,1597,1633,1634,1635,1628,200,201,320,321,322,143,305,167,186,159,160,161,162,185,1237,1238,1243,1234,665,666,671,152,141,144,168] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2222,3133,3142,3143,3155,3300,3307,3308,2794,3141,3144,3295,3296,2255,3313,2390,2391,2392,3304,2229,2230,2271,2256,2811,3630,3667,2785,2786,2795,3172,2769,2757,2762,2213,2270,2375,2210,2211,2214,3171,2735,2736,2741,2759,2777,3759,3409,3412,2231,3381,3408,2237,3407,3415,2238,2232,3454,3419,3132,3119,3421,3422,3120,3447,3450,3451,3452,3442,3444,3698,3700,3701,3702,3704] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3327,3331,3324,3325,3096,3335,3517,3102,3095,3097,3343,2513,2510,2516,2540,2520,2515,3309,3337,3339,3336] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1254,1255,1257,1265,1447,443,1273,445,446,450,438,440,470,1267,1269,1261,1027,1026,1032,1239,1025] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1810,1818,1819,1823,842,847,830,841,1573,1574,874,875,876,1572] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1392,1264,1041,1042,1385,1472,1480,1051,1372,1373,1506] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3455,3112,3121,3125,3111,3542,3550,3334,3442,3443,3576,3462] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        