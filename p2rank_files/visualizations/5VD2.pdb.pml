
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
        
        load "data/5VD2.pdb", protein
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
 
        load "data/5VD2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1370,2179,2225,2227,2228,2229,2230,2410,2423,227,233,236,273,275,276,2421,1056,1319,1320,1321,1322,2416,2422,1054,912,270,271,272,559,310,913,850,560,1368,1354,214,1352,528,309,210,211,212,308,1332,1365,1409,1450,1408,1397,1398,1451,2180,2181] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [793,734,779,738,2447,2448,2193,2420,2419,2148,2181,255,2461,2463,2462,782,2114,2115,2116,2650,2644,254,266,267,270,271,272,269,2421,2422,560,561,604,1250,603,659,849,850,273,2423,2645,2631] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1709,1710,1711,1712,1713,1644,1646,1517,1459,1460,2247,1768,2358,1391,1393,2246,2319,2320,2321,2274,2275,1777,1708] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2176,3133,2707,2681,2705,2679,2680,1472,3192,3195,3205,2166,2167,2168,1473,3129,3132,3131,1534,1535,3169,3197,2180,2146,2181,2657,1437,1438,1485,1486] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1990,2931,2932,2948,3950,3960,3964,3943,3944,1923,1925,1988,2001] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1101,849,1286,863,1147,1145,1146,1247,1248,1249,1181,1153,1155,1156,791,792,806,793] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        