
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
        
        load "data/5VDA.pdb", protein
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
 
        load "data/5VDA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2388,1057,2225,2226,2229,1056,2394,2179,2228,2399,2401,2230,2400,273,271,274,275,276,254,267,270,559,560,561,269,603,604,1250,613,1322,1054,848,849,850,2396,2193,2395,2398,2425,778,777,2426,734,779,782,789,732,735,738,790,793,2406,2411,1332,309,526,527,528,553,308,310,557,1368,1365,1352,214,1350,1354,209,210,227,211,212,1369,1370,1379,1397,1451,1398,1450,1378,2180,1408,1409] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2396,2147,2181,2116,2193,2395,2398,2148,2425,778,2426,779,782,732,735,738,2406,273,275,2399,2401,2400,253,254,267,270,559,560,848,849,850,2438,2440,2441,2596,781] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2278,1646,1648,1644,1710,2276,2277,2300,1501,1460,1517,1457,1459,1711,1713,1709,2247,2298,2299,2334,2336] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2166,2167,2168,2180,1438,2181,1472,1473,3110,2657,2659,2683,2685,3111,3147,3169,3170,3173,3174,3175,3183] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [640,660,1249,1247,863,806,793,659,1145,1146,1147,1153,1154,1155,1156,1181] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1987,3945,2909,2910,1988,2510,2509,1990,3932,3921,2926] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        