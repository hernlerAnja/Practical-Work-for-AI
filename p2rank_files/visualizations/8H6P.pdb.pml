
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
        
        load "data/8H6P.pdb", protein
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
 
        load "data/8H6P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1071,1156,1159,1160,1161,1164,1088,1059,1087,406,699,687,509,668,651,249,658,664,671,678,686,642,643,644,645,646,647,702,92,93,94,679,129,266,123,124,125,147,148,264,127,1060,126,128,1167,666,90,95] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3564,3567,2935,2936,2938,3255,3558,2976,3254,2975,2930,2934,2937,1211,1209,1210,1202,1203,1204,3568,3246,3610,3572,3607,3609,3611,3648,3602,3604,3605,983,985,2552,1214,1215,3583,4510,1252,1254,1255,4511,4508,1237,3638,3639,3640,3641,1223,1224,1244,1227] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1429,1438,1441,1427,1433,1424,1391,1877,1833,2191,1836,3774,2199,2200,2190,1842,1847,1849,1875,1876,1884,1451,1454] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [4458,2898,3272,2917,3276,2895,3263,2883,2896,3265,3269,3270,3273,1256,4486,4488,2918,1262,1263,1265,3250,4463,4457,4459,4451,4452,4453,4485,1264] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1466,3766,1467,2450,2457,1473,2233,1479,2213,2230,3764,3768,2199,2189,2194,3751,3752] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3667,3872,4132,3835,4090,3689,3699,3700,3834] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2011,2033,1767,1630,2154] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        