
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
        
        load "data/4LKM.pdb", protein
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
 
        load "data/4LKM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2366,2367,2368,2369,2370,2382,2383,2828,2830,2230,2231,2339,2853,2859,2866,2870,2872,2874,2888,2792,2793,2794,2791,2803,2829,2789,2825,2506,2507,2509,2762,2491,2492,2493,2481,2477,1720,34,37,38,59,60,62,57,58,64,93,96,36,67,71,1743,1745,1718,1719,1752,1717,1721,1689,94,95,97,1727,1730] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2181,2182,2184,3251,2165,2177,3250,2159,2171,2174,3229,2192,3092,3093,3104,3090,3241,3242,3243,3228] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1223,288,289,291,284,278,281,1359,1220,1234,1373,1358,1035,1380,1381,1371,1372,299,1221] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3284,3466,2101,2102,2103,2112,3312,3479,3286,2135,3304,3322,3355,3301] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2864,2865,3330,2862,3328,3329,3326,3295,3300,3308,3674,3199,3178,2876,2884,2880,2881,2895,2868,2869,2879,3177] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [854,895,878,879,881,883,413,410,412,855,1843,376,378,374] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1329,977,984,988,1425,1459,1460,1438,1458,1307,1881,970,972,1308] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1286,1284,1882,1883,1862,1871,1875,1876,1879,1872,350] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2772,2773,2270,2783,2770,2302,2299,2301,2268,2745] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        