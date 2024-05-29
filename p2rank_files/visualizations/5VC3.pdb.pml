
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
        
        load "data/5VC3.pdb", protein
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
 
        load "data/5VC3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2179,2225,2227,2228,2229,2230,2424,1408,1409,1056,2430,289,268,270,559,560,561,604,1250,269,603,659,613,1321,849,850,210,211,212,227,228,233,310,309,1332,1365,1368,1398,214,528,1320,1319,1322,1370,1352,1354,1397,1378,1379,1451,2193,2431,2434,2435,2437,2180,2181,271,273,275,276,2436,2462,272,274,779,777,789,790,793,734,738,2476,2477,2148,782,2634] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [2166,2167,2168,1472,1473,3145,2721,3143,3146,3147,2693,2694,2695,2719,3206,3209,3219,3192,3193,3205,1534,3183,2176,2180,2181,2146,2671,1438,1437,1490] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [2246,2276,2335,2333,2334,1393,2278,2370,1644,1646,1460,2247,1709,1710,1711,1712,1517] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [862,849,1286,1147,1247,1248,1249,1145,1146,1153,1154,1155,1181,792,793,806] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        