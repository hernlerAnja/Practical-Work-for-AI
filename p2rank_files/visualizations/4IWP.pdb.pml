
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
        
        load "data/4IWP.pdb", protein
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
 
        load "data/4IWP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1251,1266,1271,1273,304,709,710,483,458,480,481,574,577,1261,159,1276,1277,1278,1279,1281,1282,448,445,1303,1306,552,557,570,693,323,460,158,160,321,347,421,335,344,345,371,510] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [759,1121,1123,1126,1254,1253,305,1259,1260,1261,1262,734,751,1145,1144,736,731,735,714,1143,559,128,127,179,178,180,133,134,135,136,138,139,145,146,164,130,288] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3287,3250,3252,2955,2957,2961,1936,2960,2966,2969,1923,2385,2387,2388,1947,1948,1954,1957,1959,885,1942,1940,1943,1944,3222,3251,3201,3234,2819,2823,2369,3276,3285,1963,2368,2362,2364,2948,2372,2373,2370] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1064,1023,991,1426,1427,1449,996,993,999,1022,1024,1019,972,989,992,1053,2145,2146,2149,2152,2154,2180,1457] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1963,1964,1965,2368,2376,2378,2549,2364,2960,2955,1948,1954,1957,1959,1990] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1803,1804,1932,1820,1525,1563,1575,1598,1805,1553,1891,1868,1821,1914,1917,1892,1900,1793,1794,1913,1919] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [282,582,583,584,581,62,610,593,53,225,227,586,251,264,283,252,223,224,226] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2330,3387,4735,4772,3352,3354,3322,2332,2326,2328,4704,4742,2338,2339] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [23,26,668,670,101,189,311,329,330,331,172,191] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4553,3008,4618,4580,4588,3206,3209,2988,2995,2997,2998,3232,3202,3200,4581,2973,2991,2992,2987,2990] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3238,3265,3266,4064,3268,4115,4118,3267] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        