
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
        
        load "data/5Y86.pdb", protein
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
 
        load "data/5Y86.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1664,1777,1779,1780,1781,1652,1681,1101,1680,1242,1249,799,1256,1100,1232,1235,1236,1237,1285,1267,1271,1278,1259,633,636,639,627,628,629,631,662,664,663,665,816,815,683,684,685,814,1102,1653,1654,1657,1788] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [916,917,1889,655,871,872,873,886,888,890,889,1622,1624,1788,1808,1801,1802,1803,1805,1809,918,920,1623,1937,1640,1641,649,653,654,1919,1923,1916,1921,1902,1887,1890,1925,1926,659,662,664,1787,816,815,831,947,921,922,830,646,1664] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2222,2312,2786,2787,2313,2314,2243,2244,2748,2822,2824,2825,2785,2817,2820,2338,2339,2734,2215,2211] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [676,469,471,823,675,821,598,541,542,597,488,492,495,690,623] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [546,547,1149,1151,1148,232,234,1158,568,580,1150,1152,1134,1135,1137,566,745,270,747,564,247] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1300,1302,1303,1304,1376,1656,1956,1958,1959,1936,1970,2175,1374,2217,2218,1648,1969] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2308,2564,2691,2681,2682,2490,2278,2276,2277,2265,2280,2283,2285,2264,2279,2553,2560,2561,2551,2552,2487,2475] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1045,1062,1063,1064,1065,1765,1091,1107,1108,1110,1080] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        