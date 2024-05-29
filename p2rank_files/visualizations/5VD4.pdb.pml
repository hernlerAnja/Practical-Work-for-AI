
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
        
        load "data/5VD4.pdb", protein
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
 
        load "data/5VD4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2225,2227,2228,2229,2230,227,233,236,308,2437,1350,1352,212,214,309,528,209,210,211,226,1365,1332,1322,526,527,553,310,1056,2430,560,561,2436,276,1397,1398,1409,1450,1451,2179,1368] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2461,2462,561,2436,782,274,276,270,271,272,273,734,735,737,779,604,1250,613,793,790,849,789,310,559,603,2116,2193,2434,2435,2437,2148,2475,2477] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2166,2167,1473,2146,2168,2180,2181,3146,2671,2693,2695,3219,3222,2719,2721,3147,3223,3224,1438,2148,3183,3206,3209,3210,3211,1472,1532,1534] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1644,1646,1648,1620,1712,1713,1459,1517,2247,2334,2370,2372,2277,2278,1460,2246,1709,1710,2333,2335] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2945,2962,3954,3957,2946,2545,2912,2947,2894,2906,1990,1923,1988,2001,3981,2546,1987,2002,2005,3964,3968] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [862,806,751,639,640,1249,791,792,849,1250,793,1145,1147,1153,1154,1155,1263,1247,1156,1177,1181,1285,1286,1283] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        