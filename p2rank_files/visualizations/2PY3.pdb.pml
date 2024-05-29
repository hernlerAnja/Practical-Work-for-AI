
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
        
        load "data/2PY3.pdb", protein
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
 
        load "data/2PY3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3443,3336,3351,2372,2378,2398,2400,2942,2945,2949,2952,3366,2925,2917,2924,2371,2373,2376,2377,2375,2399,2531,3365,2546,2678,2904,3438,3439,2787,2903,2908,2921,2547,3446,3445,3444] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1132,576,1131,710,1117,1102,1111,1213,1208,1209,160,161,163,164,706,704,339,340,183,189,187,188,336,693,324,471,1210,1217,692,731,713,714,738,741] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3446,3445,3468,3459,3461,3467,2645,2648,3469,3313,3622,3601,3623,2570,2381,2382,2545,2547,2624,2625,2626,2649,2677,2622,3351,2546] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [410,411,440,1286,1287,1300,1345,1296,1070,1252,1253,1375,1376,1350,1356,1357,1364,1368,1386,1373,1374,1372,1251,1295,1354,1355,1283,1289,1347] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [340,1216,1214,1215,1229,1230,1117,165,169,170,173,172,1371,1231,1239,1237,1238,441,1105,1106,1107,1079,1080,1392,2587] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3245,3246,3247,4298,4300,4301,4312,4316,4305,3219,3756,3759,3767,3768,3770] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2647,3616,3304,3469,3603,3605,3606,3580,3586,3587,3575,3584,3594,3598,3602,3585,2618,3482,3483,3519,3526,3525] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1012,1013,1529,1531,1522,1526,1532,2072,2075,2079,2082,2090,1537,1540,2074,981,983,985,1014,1015] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1400,1399,1741,1739,1465,1774,1775,1776,1746,1472,1474,1773,1744,2606,1463,2609,2602,2634] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1985,2065,1983,1917,1958,2135,2133,1984] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        