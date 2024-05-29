
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
        
        load "data/3MVH.pdb", protein
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
 
        load "data/3MVH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [118,742,743,106,112,2488,741,2487,99,100,1131,2637,2638,744,760,762,763,2644,2636,2634,548,549,1158,1236,1239,707,711,1159,1130,740,1244,1241,1142,1245,1246,1247,1248,1264,288,289,437,1260,1261,119,121,135,137,1143,1101,1268,1269,1270,2660,2649,2654,2655,2659,2657,2658,2661,2662,384,402,404,406,385,400,380,408,1271,2663,2672,285,286,305,304,165,413,347,685,163,101,272,689,103,736,2432,2442,2452,2457,2458,2459,2447,2449,710,765,815,805,806] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1518,1326,1328,1523,2081,1325,1525,1526,2084,2085,1533,1529,1503,1514,1515,1516,1497,1340,2034,2042,2044,2045,2035] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [968,971,972,2270,2272,2269,2273,2274,970,995,998,1000,1039,1002,1038,993,994,2268,2227,2239,2271,2146,2228,2234] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1361,1362,1366,1364,1265,1271,1091,1266,1267,1275,1286,405,407,1263,396,397,428] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2671,2667,2669,2685,2666,2668,2670,1789,1790,1762,1379,1402,1748,1750,1378] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        