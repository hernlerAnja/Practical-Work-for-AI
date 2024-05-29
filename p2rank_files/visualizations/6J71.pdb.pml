
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
        
        load "data/6J71.pdb", protein
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
 
        load "data/6J71.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [28,2079,2130,2131,2161,2163,278,2078,27,1,4,5,43,42,26,30,31,32,33,36,37,40,41,276,2230,2231,275,3598,3601,3390,3391,3385,2136,2139,3392,3186,3160,3185,3164,2149,2152] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1356,1357,5514,6457,6458,6459,6456,1327,1331,1337,1340,1341,6026,5533,5535,5551,5513,5525,5532,5534,5502,5503,5550,5896,6025,6027,6452] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1826,1765,1767,1768,1754,2086,2093,1788,1789,1860,2087,1823,1824,1769,2094,1846,440,263,451,452,453,264,1773,1774,443,256] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2458,2485,2674,2676,2287,2273,2279,2236,2237,2238,2239,2242,2243,2247,2248,2484,2253,2258,2460,2493,2459,2443,2442,2677,2678,2424,2295,2292,3177,3179,2950] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2516,2475,2470,2472,2541,2543,2544,2964,2966,2700,2983,3194,3196,2719,3183,3178] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3484,3703,3704,3705,3518,3762,3765,3756,3727,3734] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [6141,6307,6321,6125,5926,5927,6138,6140,6160,6163,6332,6363] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [69,153,148,113,121,3205,3224,3225,118] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        