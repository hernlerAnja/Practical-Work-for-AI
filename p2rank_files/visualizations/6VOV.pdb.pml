
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
        
        load "data/6VOV.pdb", protein
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
 
        load "data/6VOV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [688,125,126,129,134,131,1044,137,689,680,1074,643,1073,299,639,128,655,1162,1154,1163,162,314,179,180,660,657] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2723,2266,2249,2267,2405,2744,3158,2727,2741,2390,3157,2773,2211,2213,2217,2218,2221,2224,2772,2212,2749,2764,2603,3128,3129,3142,3239,3247,3240,3238,2216,2739,3131] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3142,2228,2246,3245,3247,2237,2238,2406,3246,2499,3260,2465,2472,2444,2440,2464,2466,2468,2469,2471,2248,2243,2224,3268,3269,3270,3431,3437,3411,3132,3436,3104,3105,3106,3131,3262] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1176,1177,415,1178,380,381,387,388,159,161,315,393,1022,1159,1162,1175,144,358,385,382,356,156,1184,1185,1186,141] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2349,2350,2354,2342,2344,2347,2348,1654,2343,1655,1794,1728,1780,1784,1785,1787,1790,1788,1793,1564,1798,1797,1639,1640,1651,1672,1766] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1939,1941,1943,1946,1951,1949,1950,1378,1379,1382,1416,1418,1419,1408,3175,3178,3181,2760,2761,2762,3170,3180] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3130,3131,3133,3465,3752,3451,3466,3741,3742,3744,3743,3125,3689,3727,3731,2789,2798,3129] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1045,1046,1047,1352,1049,1351,1575,705,1638,1613,1627,1628,1630,743] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2283,2284,2285,2216,2197,2199,2739,1933,1945,2753,1932,1949,1973,1975,1974,2749] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        