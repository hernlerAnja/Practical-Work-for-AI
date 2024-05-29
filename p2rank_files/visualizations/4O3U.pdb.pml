
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
        
        load "data/4O3U.pdb", protein
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
 
        load "data/4O3U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3150,1507,1488,3149,1537,1542,1536,1541,1229,1269,1526,1273,1495,1235,1033,1239,1466,1470,1471,1474,1548,1545,1549,1479,1480,1132,1552,1459,1454,1280,1281,1282,1563,1278,1279,1529,1527] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3194,3196,3197,3201,3121,3122,1296,2910,1317,1291,1293,1298,1299,3210,3214,3216,248,82,84,130,132,128,114,118,126,276,3212] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2503,2518,2520,2519,2669,2670,2521,2189,2194,2201,2205,2188,2192,2186,2187,2460,2452,2453,2119,2483,2484,2195,2202,2208,2316,2083,2084,2089,2099,2097,2098,2094,2096,2102] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [5097,3897,5085,3406,3410,2835,2836,3404,2837,1831,1829,2841,1847,3907,3905,3914,3909,5090,5093,5101,5098,5104,1833,1836,5110,5106,5113] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1348,883,865,1366,5741,1025,5760,5747,5754,5758,5715,1,1350,15,1408,1410,1411,1409] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2693,2703,2739,2700,2701,2780,2765,2707,2754,2182,2688,2689,3049,3050,3036,3037,2741,2178,2172,2173,2174,2200,2175,2176,2177] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1242,1249,1253,5785,1244,1020,5694,1017,5704,5787,1021] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [5643,5646,5382,5383,5649,5650,5652,5658,5659,5660,5654,5657,5665,5481,5483,5498,5599,5620,5673] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [11,12,396,8,712,383,376,377,378,379,397] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        