
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
        
        load "data/3MIY.pdb", protein
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
 
        load "data/3MIY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2358,422,425,2481,2952,2953,2478,1012,1013,1014,2911,2919,2909,2910,2907,2912,2500,2483,2486,2901,2904,2323,227,479,2322,2333,2709,2935,2934,2917,2930,2931,2936,2916,220,215,2120,2125,2375,2377,2127,2113,2130,2487,2131,603,1037,1003,1006,1036,1038,1009,1019,602,583,585,588,1011,592,604,424,1054,1055,580,222,232,229,589,477,2118,435,436] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2891,2965,2966,2974,2872,2890,2892,2973,2163,2164,2522,2521,2497,2505,2044,2010,2012,2147,2491,2011,2493,2160,2043,2045,2017,2020,2530,2552,2008,2014,2007,2009,2013,2030,2863,2877,2349,2467,2468,2469,2470,2473,2477,2498,2494] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [993,994,632,122,624,627,654,110,1068,265,266,1074,1075,1076,1067,974,979,965,600,595,599,146,249,147,114,112,111,113,116,593,571] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1977,1978,1979,2171,2416,2417,2420,2425,2447,2430,2433,1960,1933,1935,1936,2395] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [532,518,519,273,77,79,81,535,37,35,497,38] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3733,3742,3702,3705,9,2726,2748,10,2747,14,11] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [850,1908,849,884,885,420,828,1831,1840,1803,1800,1907,1909,1912,1913,2092] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        