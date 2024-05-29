
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
        
        load "data/7P1L.pdb", protein
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
 
        load "data/7P1L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2439,2389,2390,2392,2942,2944,2539,3416,2388,3304,3490,2438,2440,3489,3484,2555,2556,3332,2797,2946,2928,3314,3311,3408,2796,2923,3415,2970,2973,3333,2949,2961,2962] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [100,101,102,103,1006,1034,107,1191,105,640,642,628,1013,1016,1110,665,670,673,1035,654,661,662,649,498,623,267,268,1117,1118,150,151,152] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3519,3711,2988,2978,2985,3644,3671,3672,3324,3325,2979,3322,3710,3709,2990,3696,3697,3699,3700,3704,2984,3016,3026,3018,3670] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [504,457,458,2268,2269,508,516,2200,2202,2203,2204,2233,2234,2235,2236,1973,1988,2166,430,2181,2184,2237,1970,456,459,1977,2257] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1376,1377,1378,1415,1416,1417,1403,1402,1404,1405,1406,1410,678,679,681,712,685,720,1220,1222,1197,1024,1027,1002,1349,1350] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4492,4493,4494,4452,4471,4474,4525,4527,4456,4489,4490,4526,2804,2808,4558,4557,4559,2731,2757,4263,4278] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3346,2771,3395,2930,2931,2933,3349,2932,2823,2821,3362,3378,2769,2772] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [630,631,633,1096,1097,473,230,637,1063,1048,1051,1080,521,523,2277] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4204,4206,4209,4221,2781,3172,4226,2773,4228,3171,3139,3140,3134,3135,3143,3144,3148] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2794,2923,2725,2727,3410,3409,3415,3420,2556] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        