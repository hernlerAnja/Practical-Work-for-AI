
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
        
        load "data/7AKO.pdb", protein
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
 
        load "data/7AKO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [115,117,118,269,171,688,113,114,119,170,172,120,121,123,284,420,1186,1180,1181,1185,1187,283,669,451,1176,1178,1092,708,709,710,1093,717,1064,1184,1076,712,1194,450,524,674,692,670,695] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2324,2325,2326,2328,2329,2902,2494,2881,2883,2382,2480,2381,2383,2330,2331,2906,2909,2915,2738,2888,3391,3392,3395,3396,3397,3398,3389,3390,3306,2926,2931,2934,3278,3307,2923,3290] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1260,2438,2264,464,481,2419,980,982,983,984,985,987,957,2222,2265,2252,2259,2263,2256,2207,2211,2220,2221,2223,465,466,468,4436,1277,1278,1279,2791,2792,2793,2794,1272,1258,1264,1270] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1394,1059,1614,1654,1656,732,736,738,739,762,763,765,781,1655,780,1639,1641,1642,1649,1069] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3860,3843,3844,3845,3846,2991,3604,3605,3273,2980,2979,3819,3282,2952,2953,2976] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1109,1145,1117,1118,677,678,679,1162,1161,534,502,1126,1127,676,683] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3376,3323,3330,3332,2747,2748,2893,2897,3331,2890,2891,2710,2713,3359] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        