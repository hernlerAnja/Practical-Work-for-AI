
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
        
        load "data/5VD5.pdb", protein
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
 
        load "data/5VD5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2416,1322,2193,2417,2420,2421,2422,2423,310,559,267,270,271,273,275,276,561,850,790,849,1285,560,557,792,793,1249,269,603,604,1056,1319,214,1350,309,526,527,528,553,212,227,308,1332,2181,2180,1409,2179,1370,2225,2226,1369,1397,1408,1451,2228,2230,1398,210,1450,209,211,1368,1365,1352,1354,2116,2462,2463,2631,777,2448,782,732,734,779,789,735,736,737,2147,2148,2650] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2679,2681,3246,3205,2167,2168,2705,2707,3132,3133,3169,3192,3195,3196,3131,1437,1470,1472,1473,1532,1534,1535,2181,2166,2180,1438] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [791,792,793,1249,863,806,861,862,1147,1247,1250,1181,1286,790,849,1283,1285,560,639,640,1263,1145,1153,1154,1155,1156,1260] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2247,2320,2278,2358,1646,1460,1644,1713,1517,2321] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2932,2933,2531,2532,3943,2946,2948,2895,2931,2897,3954,1988,1987,3967,1990] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1780,2358,1646,1643,1644,1708] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        