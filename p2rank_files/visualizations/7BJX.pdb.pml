
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
        
        load "data/7BJX.pdb", protein
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
 
        load "data/7BJX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [919,104,193,501,504,502,503,305,490,103,205,206,207,64,65,520,538,920,62,61,60,903,996,997,998,1001,1002,1003,1004,306,273,1005,72,73,76,209,208,545,890,380,381,508,522,526,525] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2885,2066,2902,2872,2062,2175,2060,2091,2092,2058,2065,2067,2527,2059,2369,2901,2974,2490,2497,2504,2508,2507,2189,2191,2262,2485,2486,2983,2975,2976,2979,2483,2370,2482] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [187,188,16,200,20,441,477,479,481,428,122,37,198,496,412,413,414,416,424,199,476,13,12,18,8,14,15,17,402,405] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [592,1424,591,1464,1465,1466,1459,558,589,561,563,565,588,1448,603,607,1449,885,886,877,893,895,1208,1210,1184] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2867,2868,3400,3190,3192,3440,3441,2543,2545,2875,2877,2547,2540,2573,2585,3424,3425,3426,2570,2589,2859,3435,3427,3428,2574] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2478,2465,2182,2020,2110,2421,2125,2181,2406,2395,2398,2169,2168,2170,2109,2157] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        