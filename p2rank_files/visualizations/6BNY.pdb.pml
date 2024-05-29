
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
        
        load "data/6BNY.pdb", protein
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
 
        load "data/6BNY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [119,121,122,170,279,680,673,169,171,294,295,675,155,117,118,124,125,1087,1220,1219,1227,720,724,725,717,1109,1110,1111,702,751,697,700,692,694,701] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2870,2863,2868,2877,1855,1856,1861,1862,1865,1867,1871,1898,1831,850,1848,1849,1851,1853,3130,3129,3142,1844,2296,2729,2730,2731,3158,3159,3160,2288,2276,2279,2277,3193,3195,2864,3184,2284,2286,2461,2270,2272] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1475,1703,1712,1506,1706,1827,1460,1825,1826,1840,1731,2893,1431,1433,1470,1471,1702,1799,1800,1701,1822,1808] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [448,447,450,1238,1239,1217,523,519,536,472,473,446,540,541,983] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2880,2882,4487,3108,3110,4450,4451,4458,2899,2901,2911,2888,2895,2903,2907,3114,3117,4422,3086,2923,3084,3113] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1238,1239,1217,448,447,542,450,1229,1232,523,526,536,446,540,296,675,676,541] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3056,3058,3061,3050,3053,3054,3055,3057,1465,810,811,1471,764,1443,1444,1478,742,763] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [274,217,218,53,54,548,668,546,547,559,44] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1226,1228,1229,1227,1232,1243,424,450,296,676,660,313,314,426] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2003,2006,1983,1992,1967,2033,2034,1343,1362,1365,1366,1298,1348] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1920,1941,2145,2123,907,1419] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        