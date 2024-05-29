
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
        
        load "data/5IDP.pdb", protein
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
 
        load "data/5IDP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1381,1382,275,276,277,1385,1386,1387,1388,1252,1255,1258,887,1389,1410,299,425,237,240,242,297,298,442,542,798,801,802,803,441,438,440,799,272,273,274,647,1276,1277,1380,854,2793,2794,2795,827,886,2792,2788,2791,824,818,646,797,807,1253] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2619,2649,2390,1757,2405,2621,2360,2391,1751,1753,2349,2361,2356,975,976,1025,1023,1026,1030,1008,997,1001,1007,1033,1034,2664,2665] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2838,2841,2842,4104,4117,4120,3407,3408,3682,3683,3651,2855,4115,2836,2856,4116,3671,3673,531,4143,3375,3377,3376] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1214,1451,1452,1454,3692,1170,1188,1193,2856,562,3689,531,3684,2852,2843,2847,2827,2835,2836,3701,3703,3699,1177,1179,2841,3682] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4139,4169,4180,4181,4182,4487,2889,4488,4489,2901,4128,4480,4483,4482,4136,4170,4171,4206,2868,2886,2887,4131,4218] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1239,1248,1526,1527,870,872,875,912,911,1490,865,867,1741,909,1515,1785,1491,1514] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3580,3878,3879,3880,3882,3872,3895,3896,3891,4994,5017,4990,4991,3563,3565,7,9,3564,3566,3926,5039,5040,5030,5031,5032,3578,3579,3927] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [511,1412,1415,1416,509,510,458,268,270,271,1392,1398,1401,1405,1387,442,541,542,538,1425] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1556,1590,1593,1608,2113,1594,2513,1632,1633,1557,2504,2505,2076,2057,2075,2112,2498,2079] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2491,2046,2048,2273,1992,2044,2045,2047,1993,1996,2472,2483,2484,2446,2448,2450,2277] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        