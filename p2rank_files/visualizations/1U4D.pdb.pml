
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
        
        load "data/1U4D.pdb", protein
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
 
        load "data/1U4D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3061,3075,3092,3091,2196,2190,2365,2193,2191,2194,2565,3165,2567,2689,2724,2727,2731,2706,2756,2703,2380,2245,2379,2244,2684,2685,2197,3172,3173,3174,3175,2381,2462,3168,3169,3176,3166,2208,2199,2202,2490,3182] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [136,130,133,178,179,177,123,124,125,127,128,299,626,643,313,315,432,627,669,673,674,1028,1059,666,1042,1139,1058,648,631,645,433,1135,1149,509,698] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1501,1745,1747,1746,1748,1761,3796,3797,1752,1726,1722,1567,1600,1741,3728,1590,1592,3753,1562,1563,1674,3754,3755,3758,3760,3762,3794,3795,3726,3751,3727,1498,1538] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3378,1571,1601,3434,3462,3430,3339,3465,3306,3352,3354,3359,3376,3405,3356] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2739,2876,2877,3099,3114,3116,3118,2821,2822,2841,2759,2760,2775,2761,2762,2763,2764,2802,2804] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1474,1886,1889,1682,1439,1442,1729,1739,1287,1591,1734,1588] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3685,3384,3985,3984,3539] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [341,371,372,373,340,594,349,319,589,583,586,593,157,342,343,344,347] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1281,1343,1333,1339,1279,1308,1260,1259,1388,1365] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        