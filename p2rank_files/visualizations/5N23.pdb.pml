
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
        
        load "data/5N23.pdb", protein
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
 
        load "data/5N23.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [404,405,406,526,388,533,348,355,357,354,981,982,983,1354,1355,1366,2889,984,1470,512,931,933,349,351,352,959,952,938,956,976,1462,960,1382,1383,973,2586,2582,2576,2579,1008,1009,2584,2573,964,971,527,528,529,687,1468,1469,1483,543,1485,1463,1467,1464,360,364,365,2910,2888,2896,2905,2886,366,368,372,373,381,383,2933,1326,1494,1495,1496,2916,1342,1343,2912,662,651,628,2908,2934] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1197,1199,1200,2334,2335,2419,2430,2435,2434,2436,2421,2456,2454,2455,2457,2459,1196,765,98,63,1226,58,62,54,86,53,55,57,28,56,88,90,100,87,89] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1738,2262,2296,2293,1252,1254,1250,1251,1737,1220,2300,2301,1224,1222,1258,1259] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1391,1119,1156,1157,2526,1083] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2656,2661,2651,2658,2654,2655,389,536,537,395,2644,396,2635,394,890,891,377,386,580,553] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        