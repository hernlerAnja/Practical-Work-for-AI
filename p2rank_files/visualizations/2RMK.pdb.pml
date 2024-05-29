
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
        
        load "data/2RMK.pdb", protein
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
 
        load "data/2RMK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1608,1609,1530,1543,1547,1604,1605,1606,1607,1634,1633,2937,2938,2890,1532,1548,1079,1075,1081,1094,1097,1080,1082,1480,1127,1663,1661,1096,2891,2892,1174,1176,1478,1173,1175,1012] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [404,1827,2500,253,247,2490,2496,260,1769,1770,1784,1786,1787,1779,1826,2480,1825,2486,187,189,199,200,246,401,403,429,254] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1011,1012,3843,3800,3801,962,964,967,969,3857,3841,3842,3844,2980,2982,2983,2984,2981,2976,3719,952,1097,1098,1114,2887,3718,3738,3720,1031,1043,1099,2935,2937,2930,2933] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [509,875,213,214,233,866,869,176,188,474,431,438,451,242,187,189,199,200,243,246,232,234,491,452,453,876] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [601,605,606,762,789,790,826,71,3663,3665,3666,74,40,41,580,582,827,572] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [510,845,537,536,557,569,442,443,474,431,438,509,233,296,298,362,584,585,586,587,588,589,590,846,232,234,419,493,518,534,541,538] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [40,41,28,3659,74,3661,54,1115,2870,2862,2863,2866,2869,2836,2846,1145,2764,3686,3687] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [922,3363,3364,3972,3913,3973,3971,3417,919,954,955,956,965,966,903,904,917,916,3970] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1228,1260,166,167,1236,1237,173,1770,1786,1787,186] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1259,1260,161,167,1305,1306,1336,1337,1340,173,177,157,1388,186,1786,1787] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [855,856,857,1034,137,1080,1082,1480,1077,1079,1078,1081,1479,1008,1010] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1839,1939,1785,1786,2109,2010,1291,2067,1259,1260,1305,1306] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        