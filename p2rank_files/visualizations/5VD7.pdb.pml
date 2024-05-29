
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
        
        load "data/5VD7.pdb", protein
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
 
        load "data/5VD7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2430,1322,850,553,1285,557,559,561,308,309,276,310,270,273,275,254,267,1056,1332,528,526,527,2225,2226,2179,2228,2230,227,233,1370,1368,1354,1350,214,1352,212,209,210,211,1365,1408,1409,1451,1450,1397,1398,2431,2193,2434,2437,2116,2435,2436,782,735,736,737,738,781,2476,2664,2477,2635,2645,2147,2148] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2180,2181,2166,2167,2168,1473,3146,2693,2695,3219,2719,2721,3147,3224,3225,3223,1472,1534,3145,1535,1532,3183,3206,3209,3192,3205,3210,1438,1490] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1460,1517,1644,1646,1713,1611,1620,2246,2247,2370,2372,2277,2278,2276,2335] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [862,863,1145,1146,1147,1153,1154,1155,1263,1283,639,640,1156,1177,1181,1249,1250,1247,849,792,806,793,748] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2961,2962,3954,2546,2945,2946,3980,3957,1990,1925,3968,3978,1923,1988,1987,2001,2002,2005] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1768,1709,1713,1643,1644,1645,1646,2371,2372,1780,1708] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        