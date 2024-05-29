
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
        
        load "data/8OUU.pdb", protein
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
 
        load "data/8OUU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [556,1309,1313,1314,1315,1280,1278,1299,1305,621,553,581,583,555,1097,1099,630,1263,1268,1269,1270,1272,1273,1277,392,394,1276,626,1264,738,500,502,739,407,637,638,641,643,633,634,754,1058,1114,1266,524] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2835,2836,2837,2863,2838,2865,2806,3371,3332,3577,3541,3543,3568,3571,3572,3575,3562,2811,2812,2923,2925,3018,2782,2784,2689,2807,2676,3539,3540,3536,2908,2909,3527,3532,3535,3388,3533,3534,3033,3017,3032,2674] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [779,777,801,802,805,1194,810,811,839,202,1285,1286,1287,1289,241,630,1291,1288,199,200,196,378,758,768,770,774,258] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3053,3056,2476,2479,3079,3458,2482,3082,3086,3087,3088,3037,3058,3550,3552,3554,3549,3551,2660,3429,3457,2540,3548,2488,3547,2518,2520] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2504,2506,3715,3556,3443,3444,3546,3547,3555,3719,3721,3431,3432,3433,3434,3559,3407,3564,3566,3405,3406,3682,3736] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1414,1415,1413,1424,1375,1377,1379,1133,1134,1135,1438,1299,1307,1296,1300,1303,1310,1280,1293,1302] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1568,1569,1063,1579,1577,1578,1576,1064,2134,1570,2129,2132,2149,1034,1036] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4143,4339,3904,4044,3907] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        