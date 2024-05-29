
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
        
        load "data/4IW0.pdb", protein
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
 
        load "data/4IW0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [123,281,172,552,700,701,724,707,171,173,296,138,157,727,744,1138,121,119,120,125,126,127,721,124,128,1136,1137,1247,1113,1114,553,1245,1246,1102,1121,1255,1252,1253,1248,1249,1254,752,747,751,778] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [877,878,2580,3014,2140,2133,2134,2132,2135,2136,3413,3414,2128,2115,3443,3444,3426,3395,2559,2560,2561,2562,3479,3140,3477,3147,2565,2149,2563,2564,2572,2577,2146,2151,2155,3149,3152,3008,3011,3012,3015,3010] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2172,2204,903,904,1703,2407,934,935,2225,2429] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [138,139,142,146,147,157,152,153,154,441,173,297,298,1253,1254,1271,1268,1269,1103,1255,1086,1275,1394,1396,1270] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [769,771,1426,1427,1110,791,767,1108,1111,1101,802,1839,1763,1438,1439,1726,1109,1762,1727,1728] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [275,276,55,56,218,586,603,46,217,219,220,44,577,574,575,244,245] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1715,1717,1986,1985,1790,1987,1997,1789,2105,2106,2109,2110,2111,2084,2092,2083,2060] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3546,4894,2519,4924,4933,4891,4893,2520,3514,3544,4926] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        